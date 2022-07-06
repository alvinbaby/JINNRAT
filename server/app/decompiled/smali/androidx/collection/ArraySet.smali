.class public final Landroidx/collection/ArraySet;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/collection/ArraySet$ElementIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArraySet"

.field private static sBaseCache:[Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final sBaseCacheLock:Ljava/lang/Object;

.field private static sBaseCacheSize:I

.field private static sTwiceBaseCache:[Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final sTwiceBaseCacheLock:Ljava/lang/Object;

.field private static sTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field private mHashes:[I

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/collection/ArraySet;->sBaseCacheLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/collection/ArraySet;->sTwiceBaseCacheLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 279
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 280
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 286
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 287
    move v2, v1

    if-nez v2, :cond_0

    .line 288
    move-object v2, v0

    sget-object v3, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v3, v2, Landroidx/collection/ArraySet;->mHashes:[I

    .line 289
    move-object v2, v0

    sget-object v3, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v3, v2, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 293
    :goto_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/collection/ArraySet;->mSize:I

    .line 294
    return-void

    .line 291
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/collection/ArraySet;->allocArrays(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroidx/collection/ArraySet;)V
    .locals 4
    .param p1    # Landroidx/collection/ArraySet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 300
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroidx/collection/ArraySet;-><init>()V

    .line 301
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 302
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/ArraySet;->addAll(Landroidx/collection/ArraySet;)V

    .line 304
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 4
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 310
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroidx/collection/ArraySet;-><init>()V

    .line 311
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 312
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 314
    :cond_0
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 8
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    .line 320
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    invoke-direct {v6}, Landroidx/collection/ArraySet;-><init>()V

    .line 321
    move-object v6, v1

    if-eqz v6, :cond_0

    .line 322
    move-object v6, v1

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 323
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 322
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 326
    :cond_0
    return-void
.end method

.method private allocArrays(I)V
    .locals 16

    .prologue
    .line 173
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v7, v1

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    .line 174
    sget-object v7, Landroidx/collection/ArraySet;->sTwiceBaseCacheLock:Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v2, v8

    monitor-enter v7

    .line 175
    :try_start_0
    sget-object v7, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v7, :cond_1

    .line 176
    sget-object v7, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v7

    .line 178
    move-object v7, v0

    move-object v8, v3

    :try_start_1
    iput-object v8, v7, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 179
    move-object v7, v3

    const/4 v8, 0x0

    aget-object v7, v7, v8

    check-cast v7, [Ljava/lang/Object;

    sput-object v7, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 180
    move-object v7, v0

    move-object v8, v3

    const/4 v9, 0x1

    aget-object v8, v8, v9

    check-cast v8, [I

    iput-object v8, v7, Landroidx/collection/ArraySet;->mHashes:[I

    .line 181
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/ArraySet;->mHashes:[I

    if-eqz v7, :cond_0

    .line 182
    move-object v7, v3

    const/4 v8, 0x0

    move-object v9, v3

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v13, v9

    move v14, v10

    move-object v15, v11

    move-object v9, v15

    move-object v10, v13

    move v11, v14

    move-object v12, v15

    aput-object v12, v10, v11

    aput-object v9, v7, v8

    .line 183
    sget v7, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    sput v7, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    move-object v7, v2

    :try_start_2
    monitor-exit v7

    .line 231
    :goto_0
    return-void

    .line 194
    :cond_0
    :goto_1
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ArraySet Found corrupt ArraySet cache: [0]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " [1]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    const/4 v7, 0x0

    sput-object v7, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 197
    const/4 v7, 0x0

    sput v7, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    .line 199
    :cond_1
    move-object v7, v2

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    :cond_2
    :goto_2
    move-object v7, v0

    move v8, v1

    new-array v8, v8, [I

    iput-object v8, v7, Landroidx/collection/ArraySet;->mHashes:[I

    .line 230
    move-object v7, v0

    move v8, v1

    new-array v8, v8, [Ljava/lang/Object;

    iput-object v8, v7, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 231
    goto :goto_0

    .line 190
    :catch_0
    move-exception v7

    move-object v4, v7

    goto :goto_1

    .line 199
    :catchall_0
    move-exception v7

    move-object v5, v7

    move-object v7, v2

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v7, v5

    throw v7

    .line 200
    :cond_3
    move v7, v1

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 201
    sget-object v7, Landroidx/collection/ArraySet;->sBaseCacheLock:Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v2, v8

    monitor-enter v7

    .line 202
    :try_start_4
    sget-object v7, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    if-eqz v7, :cond_5

    .line 203
    sget-object v7, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v3, v7

    .line 205
    move-object v7, v0

    move-object v8, v3

    :try_start_5
    iput-object v8, v7, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 206
    move-object v7, v3

    const/4 v8, 0x0

    aget-object v7, v7, v8

    check-cast v7, [Ljava/lang/Object;

    sput-object v7, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 207
    move-object v7, v0

    move-object v8, v3

    const/4 v9, 0x1

    aget-object v8, v8, v9

    check-cast v8, [I

    iput-object v8, v7, Landroidx/collection/ArraySet;->mHashes:[I

    .line 208
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/ArraySet;->mHashes:[I

    if-eqz v7, :cond_4

    .line 209
    move-object v7, v3

    const/4 v8, 0x0

    move-object v9, v3

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v13, v9

    move v14, v10

    move-object v15, v11

    move-object v9, v15

    move-object v10, v13

    move v11, v14

    move-object v12, v15

    aput-object v12, v10, v11

    aput-object v9, v7, v8

    .line 210
    sget v7, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    sput v7, Landroidx/collection/ArraySet;->sBaseCacheSize:I
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 215
    move-object v7, v2

    :try_start_6
    monitor-exit v7

    goto/16 :goto_0

    .line 221
    :cond_4
    :goto_3
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ArraySet Found corrupt ArraySet cache: [0]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " [1]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 223
    const/4 v7, 0x0

    sput-object v7, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 224
    const/4 v7, 0x0

    sput v7, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    .line 226
    :cond_5
    move-object v7, v2

    monitor-exit v7

    goto/16 :goto_2

    .line 217
    :catch_1
    move-exception v7

    move-object v4, v7

    goto :goto_3

    .line 226
    :catchall_1
    move-exception v7

    move-object v6, v7

    move-object v7, v2

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v7, v6

    throw v7
.end method

.method private binarySearch(I)I
    .locals 7

    .prologue
    .line 89
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/collection/ArraySet;->mHashes:[I

    move-object v4, v0

    iget v4, v4, Landroidx/collection/ArraySet;->mSize:I

    move v5, v1

    invoke-static {v3, v4, v5}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v0, v3

    return v0

    .line 90
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 91
    new-instance v3, Ljava/util/ConcurrentModificationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .locals 11

    .prologue
    .line 239
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v0

    array-length v7, v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    .line 240
    sget-object v7, Landroidx/collection/ArraySet;->sTwiceBaseCacheLock:Ljava/lang/Object;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v3, v8

    monitor-enter v7

    .line 241
    :try_start_0
    sget v7, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    const/16 v8, 0xa

    if-ge v7, v8, :cond_1

    .line 242
    move-object v7, v1

    const/4 v8, 0x0

    sget-object v9, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    aput-object v9, v7, v8

    .line 243
    move-object v7, v1

    const/4 v8, 0x1

    move-object v9, v0

    aput-object v9, v7, v8

    .line 244
    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    :goto_0
    move v7, v4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    .line 245
    move-object v7, v1

    move v8, v4

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 244
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 247
    :cond_0
    move-object v7, v1

    sput-object v7, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 248
    sget v7, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    sput v7, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    .line 254
    :cond_1
    move-object v7, v3

    monitor-exit v7

    .line 272
    :cond_2
    :goto_1
    return-void

    .line 254
    :catchall_0
    move-exception v7

    move-object v5, v7

    move-object v7, v3

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v5

    throw v7

    .line 255
    :cond_3
    move-object v7, v0

    array-length v7, v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 256
    sget-object v7, Landroidx/collection/ArraySet;->sBaseCacheLock:Ljava/lang/Object;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v3, v8

    monitor-enter v7

    .line 257
    :try_start_1
    sget v7, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    const/16 v8, 0xa

    if-ge v7, v8, :cond_5

    .line 258
    move-object v7, v1

    const/4 v8, 0x0

    sget-object v9, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    aput-object v9, v7, v8

    .line 259
    move-object v7, v1

    const/4 v8, 0x1

    move-object v9, v0

    aput-object v9, v7, v8

    .line 260
    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    :goto_2
    move v7, v4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_4

    .line 261
    move-object v7, v1

    move v8, v4

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 260
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 263
    :cond_4
    move-object v7, v1

    sput-object v7, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 264
    sget v7, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    sput v7, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    .line 270
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

.method private indexOf(Ljava/lang/Object;I)I
    .locals 10

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v0

    iget v7, v7, Landroidx/collection/ArraySet;->mSize:I

    move v3, v7

    .line 99
    move v7, v3

    if-nez v7, :cond_0

    .line 100
    const/4 v7, -0x1

    move v0, v7

    .line 130
    :goto_0
    return v0

    .line 103
    :cond_0
    move-object v7, v0

    move v8, v2

    invoke-direct {v7, v8}, Landroidx/collection/ArraySet;->binarySearch(I)I

    move-result v7

    move v4, v7

    .line 106
    move v7, v4

    if-gez v7, :cond_1

    .line 107
    move v7, v4

    move v0, v7

    goto :goto_0

    .line 111
    :cond_1
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v9, v4

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 112
    move v7, v4

    move v0, v7

    goto :goto_0

    .line 117
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

    iget-object v7, v7, Landroidx/collection/ArraySet;->mHashes:[I

    move v8, v5

    aget v7, v7, v8

    move v8, v2

    if-ne v7, v8, :cond_4

    .line 118
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v9, v5

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v5

    move v0, v7

    goto :goto_0

    .line 117
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 122
    :cond_4
    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v6, v7

    :goto_2
    move v7, v6

    if-ltz v7, :cond_6

    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/ArraySet;->mHashes:[I

    move v8, v6

    aget v7, v7, v8

    move v8, v2

    if-ne v7, v8, :cond_6

    .line 123
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v9, v6

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v6

    move v0, v7

    goto :goto_0

    .line 122
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 130
    :cond_6
    move v7, v5

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    move v0, v7

    goto :goto_0
.end method

.method private indexOfNull()I
    .locals 8

    .prologue
    .line 134
    move-object v0, p0

    move-object v5, v0

    iget v5, v5, Landroidx/collection/ArraySet;->mSize:I

    move v1, v5

    .line 137
    move v5, v1

    if-nez v5, :cond_0

    .line 138
    const/4 v5, -0x1

    move v0, v5

    .line 168
    :goto_0
    return v0

    .line 141
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroidx/collection/ArraySet;->binarySearch(I)I

    move-result v5

    move v2, v5

    .line 144
    move v5, v2

    if-gez v5, :cond_1

    .line 145
    move v5, v2

    move v0, v5

    goto :goto_0

    .line 149
    :cond_1
    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v7, v2

    aget-object v6, v6, v7

    if-ne v5, v6, :cond_2

    .line 150
    move v5, v2

    move v0, v5

    goto :goto_0

    .line 155
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

    iget-object v5, v5, Landroidx/collection/ArraySet;->mHashes:[I

    move v6, v3

    aget v5, v5, v6

    if-nez v5, :cond_4

    .line 156
    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v7, v3

    aget-object v6, v6, v7

    if-ne v5, v6, :cond_3

    move v5, v3

    move v0, v5

    goto :goto_0

    .line 155
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 160
    :cond_4
    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    :goto_2
    move v5, v4

    if-ltz v5, :cond_6

    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/ArraySet;->mHashes:[I

    move v6, v4

    aget v5, v5, v6

    if-nez v5, :cond_6

    .line 161
    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v7, v4

    aget-object v6, v6, v7

    if-ne v5, v6, :cond_5

    move v5, v4

    move v0, v5

    goto :goto_0

    .line 160
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 168
    :cond_6
    move v5, v3

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    move v0, v5

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 15
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 416
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v8, v0

    iget v8, v8, Landroidx/collection/ArraySet;->mSize:I

    move v2, v8

    .line 419
    move-object v8, v1

    if-nez v8, :cond_0

    .line 420
    const/4 v8, 0x0

    move v3, v8

    .line 421
    move-object v8, v0

    invoke-direct {v8}, Landroidx/collection/ArraySet;->indexOfNull()I

    move-result v8

    move v4, v8

    .line 426
    :goto_0
    move v8, v4

    if-ltz v8, :cond_1

    .line 427
    const/4 v8, 0x0

    move v0, v8

    .line 470
    :goto_1
    return v0

    .line 423
    :cond_0
    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    move v3, v8

    .line 424
    move-object v8, v0

    move-object v9, v1

    move v10, v3

    invoke-direct {v8, v9, v10}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v8

    move v4, v8

    goto :goto_0

    .line 430
    :cond_1
    move v8, v4

    const/4 v9, -0x1

    xor-int/lit8 v8, v8, -0x1

    move v4, v8

    .line 431
    move v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v9, v9

    if-lt v8, v9, :cond_6

    .line 432
    move v8, v2

    const/16 v9, 0x8

    if-lt v8, v9, :cond_2

    move v8, v2

    move v9, v2

    const/4 v10, 0x1

    shr-int/lit8 v9, v9, 0x1

    add-int/2addr v8, v9

    .line 433
    :goto_2
    move v5, v8

    .line 437
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mHashes:[I

    move-object v6, v8

    .line 438
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move-object v7, v8

    .line 439
    move-object v8, v0

    move v9, v5

    invoke-direct {v8, v9}, Landroidx/collection/ArraySet;->allocArrays(I)V

    .line 441
    move v8, v2

    move-object v9, v0

    iget v9, v9, Landroidx/collection/ArraySet;->mSize:I

    if-eq v8, v9, :cond_4

    .line 442
    new-instance v8, Ljava/util/ConcurrentModificationException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v8

    .line 433
    :cond_2
    move v8, v2

    const/4 v9, 0x4

    if-lt v8, v9, :cond_3

    const/16 v8, 0x8

    goto :goto_2

    :cond_3
    const/4 v8, 0x4

    goto :goto_2

    .line 445
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v8, v8

    if-lez v8, :cond_5

    .line 447
    move-object v8, v6

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/ArraySet;->mHashes:[I

    const/4 v11, 0x0

    move-object v12, v6

    array-length v12, v12

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    move-object v8, v7

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v11, 0x0

    move-object v12, v7

    array-length v12, v12

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    :cond_5
    move-object v8, v6

    move-object v9, v7

    move v10, v2

    invoke-static {v8, v9, v10}, Landroidx/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 454
    :cond_6
    move v8, v4

    move v9, v2

    if-ge v8, v9, :cond_7

    .line 459
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mHashes:[I

    move v9, v4

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/ArraySet;->mHashes:[I

    move v11, v4

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move v12, v2

    move v13, v4

    sub-int/2addr v12, v13

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v9, v4

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v11, v4

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move v12, v2

    move v13, v4

    sub-int/2addr v12, v13

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    :cond_7
    move v8, v2

    move-object v9, v0

    iget v9, v9, Landroidx/collection/ArraySet;->mSize:I

    if-ne v8, v9, :cond_8

    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v9, v9

    if-lt v8, v9, :cond_9

    .line 464
    :cond_8
    new-instance v8, Ljava/util/ConcurrentModificationException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v8

    .line 467
    :cond_9
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mHashes:[I

    move v9, v4

    move v10, v3

    aput v10, v8, v9

    .line 468
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v9, v4

    move-object v10, v1

    aput-object v10, v8, v9

    .line 469
    move-object v8, v0

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget v9, v9, Landroidx/collection/ArraySet;->mSize:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroidx/collection/ArraySet;->mSize:I

    .line 470
    const/4 v8, 0x1

    move v0, v8

    goto/16 :goto_1
.end method

.method public addAll(Landroidx/collection/ArraySet;)V
    .locals 10
    .param p1    # Landroidx/collection/ArraySet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 478
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    iget v4, v4, Landroidx/collection/ArraySet;->mSize:I

    move v2, v4

    .line 479
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Landroidx/collection/ArraySet;->mSize:I

    move v6, v2

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroidx/collection/ArraySet;->ensureCapacity(I)V

    .line 480
    move-object v4, v0

    iget v4, v4, Landroidx/collection/ArraySet;->mSize:I

    if-nez v4, :cond_2

    .line 481
    move v4, v2

    if-lez v4, :cond_1

    .line 482
    move-object v4, v1

    iget-object v4, v4, Landroidx/collection/ArraySet;->mHashes:[I

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/ArraySet;->mHashes:[I

    const/4 v7, 0x0

    move v8, v2

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 483
    move-object v4, v1

    iget-object v4, v4, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v7, 0x0

    move v8, v2

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Landroidx/collection/ArraySet;->mSize:I

    if-eq v4, v5, :cond_0

    .line 485
    new-instance v4, Ljava/util/ConcurrentModificationException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 487
    :cond_0
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/collection/ArraySet;->mSize:I

    .line 494
    :cond_1
    return-void

    .line 490
    :cond_2
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 491
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 490
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 8
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 752
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroidx/collection/ArraySet;->mSize:I

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroidx/collection/ArraySet;->ensureCapacity(I)V

    .line 753
    const/4 v5, 0x0

    move v2, v5

    .line 754
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 755
    move v5, v2

    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    move v2, v5

    .line 756
    goto :goto_0

    .line 757
    :cond_0
    move v5, v2

    move v0, v5

    return v0
.end method

.method public clear()V
    .locals 8

    .prologue
    .line 333
    move-object v0, p0

    move-object v4, v0

    iget v4, v4, Landroidx/collection/ArraySet;->mSize:I

    if-eqz v4, :cond_0

    .line 334
    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/ArraySet;->mHashes:[I

    move-object v1, v4

    .line 335
    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move-object v2, v4

    .line 336
    move-object v4, v0

    iget v4, v4, Landroidx/collection/ArraySet;->mSize:I

    move v3, v4

    .line 337
    move-object v4, v0

    sget-object v5, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v5, v4, Landroidx/collection/ArraySet;->mHashes:[I

    .line 338
    move-object v4, v0

    sget-object v5, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v5, v4, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 339
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/collection/ArraySet;->mSize:I

    .line 340
    move-object v4, v1

    move-object v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Landroidx/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 342
    :cond_0
    move-object v4, v0

    iget v4, v4, Landroidx/collection/ArraySet;->mSize:I

    if-eqz v4, :cond_1

    .line 343
    new-instance v4, Ljava/util/ConcurrentModificationException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 345
    :cond_1
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 376
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

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

.method public containsAll(Ljava/util/Collection;)Z
    .locals 6
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 738
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 739
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 740
    const/4 v4, 0x0

    move v0, v4

    .line 743
    :goto_1
    return v0

    .line 742
    :cond_0
    goto :goto_0

    .line 743
    :cond_1
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1
.end method

.method public ensureCapacity(I)V
    .locals 11

    .prologue
    .line 352
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget v5, v5, Landroidx/collection/ArraySet;->mSize:I

    move v2, v5

    .line 353
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v5, v5

    move v6, v1

    if-ge v5, v6, :cond_1

    .line 354
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/ArraySet;->mHashes:[I

    move-object v3, v5

    .line 355
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move-object v4, v5

    .line 356
    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Landroidx/collection/ArraySet;->allocArrays(I)V

    .line 357
    move-object v5, v0

    iget v5, v5, Landroidx/collection/ArraySet;->mSize:I

    if-lez v5, :cond_0

    .line 358
    move-object v5, v3

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/ArraySet;->mHashes:[I

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    :cond_0
    move-object v5, v3

    move-object v6, v4

    move-object v7, v0

    iget v7, v7, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v5, v6, v7}, Landroidx/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 363
    :cond_1
    move-object v5, v0

    iget v5, v5, Landroidx/collection/ArraySet;->mSize:I

    move v6, v2

    if-eq v5, v6, :cond_2

    .line 364
    new-instance v5, Ljava/util/ConcurrentModificationException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    .line 366
    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 633
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v6, v1

    if-ne v5, v6, :cond_0

    .line 634
    const/4 v5, 0x1

    move v0, v5

    .line 656
    :goto_0
    return v0

    .line 636
    :cond_0
    move-object v5, v1

    instance-of v5, v5, Ljava/util/Set;

    if-eqz v5, :cond_4

    .line 637
    move-object v5, v1

    check-cast v5, Ljava/util/Set;

    move-object v2, v5

    .line 638
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/collection/ArraySet;->size()I

    move-result v5

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 639
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 643
    :cond_1
    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move-object v6, v0

    :try_start_0
    iget v6, v6, Landroidx/collection/ArraySet;->mSize:I

    if-ge v5, v6, :cond_3

    .line 644
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 645
    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_2

    .line 646
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 643
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 654
    :cond_3
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 649
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 650
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 651
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 652
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 656
    :cond_4
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 664
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/ArraySet;->mHashes:[I

    move-object v1, v5

    .line 665
    const/4 v5, 0x0

    move v2, v5

    .line 666
    const/4 v5, 0x0

    move v3, v5

    move-object v5, v0

    iget v5, v5, Landroidx/collection/ArraySet;->mSize:I

    move v4, v5

    :goto_0
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_0

    .line 667
    move v5, v2

    move-object v6, v1

    move v7, v3

    aget v6, v6, v7

    add-int/2addr v5, v6

    move v2, v5

    .line 666
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 669
    :cond_0
    move v5, v2

    move v0, v5

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 386
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-direct {v2}, Landroidx/collection/ArraySet;->indexOfNull()I

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

    invoke-direct {v2, v3, v4}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 404
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/collection/ArraySet;->mSize:I

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 711
    move-object v0, p0

    new-instance v1, Landroidx/collection/ArraySet$ElementIterator;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/collection/ArraySet$ElementIterator;-><init>(Landroidx/collection/ArraySet;)V

    move-object v0, v1

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 504
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 505
    move v3, v2

    if-ltz v3, :cond_0

    .line 506
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 507
    const/4 v3, 0x1

    move v0, v3

    .line 509
    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public removeAll(Landroidx/collection/ArraySet;)Z
    .locals 8
    .param p1    # Landroidx/collection/ArraySet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 580
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    iget v5, v5, Landroidx/collection/ArraySet;->mSize:I

    move v2, v5

    .line 584
    move-object v5, v0

    iget v5, v5, Landroidx/collection/ArraySet;->mSize:I

    move v3, v5

    .line 585
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 586
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 585
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 588
    :cond_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/collection/ArraySet;->mSize:I

    if-eq v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    return v0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 8
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 767
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x0

    move v2, v5

    .line 768
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 769
    move v5, v2

    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    move v2, v5

    .line 770
    goto :goto_0

    .line 771
    :cond_0
    move v5, v2

    move v0, v5

    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 519
    move-object v0, p0

    move/from16 v1, p1

    move-object v8, v0

    iget v8, v8, Landroidx/collection/ArraySet;->mSize:I

    move v2, v8

    .line 520
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v9, v1

    aget-object v8, v8, v9

    move-object v3, v8

    .line 521
    move v8, v2

    const/4 v9, 0x1

    if-gt v8, v9, :cond_0

    .line 524
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/collection/ArraySet;->clear()V

    .line 568
    :goto_0
    move-object v8, v3

    move-object v0, v8

    return-object v0

    .line 526
    :cond_0
    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v4, v8

    .line 527
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v8, v8

    const/16 v9, 0x8

    if-le v8, v9, :cond_4

    move-object v8, v0

    iget v8, v8, Landroidx/collection/ArraySet;->mSize:I

    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v9, v9

    const/4 v10, 0x3

    div-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_4

    .line 531
    move-object v8, v0

    iget v8, v8, Landroidx/collection/ArraySet;->mSize:I

    const/16 v9, 0x8

    if-le v8, v9, :cond_3

    move-object v8, v0

    iget v8, v8, Landroidx/collection/ArraySet;->mSize:I

    move-object v9, v0

    iget v9, v9, Landroidx/collection/ArraySet;->mSize:I

    const/4 v10, 0x1

    shr-int/lit8 v9, v9, 0x1

    add-int/2addr v8, v9

    :goto_1
    move v5, v8

    .line 535
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mHashes:[I

    move-object v6, v8

    .line 536
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move-object v7, v8

    .line 537
    move-object v8, v0

    move v9, v5

    invoke-direct {v8, v9}, Landroidx/collection/ArraySet;->allocArrays(I)V

    .line 539
    move v8, v1

    if-lez v8, :cond_1

    .line 541
    move-object v8, v6

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/ArraySet;->mHashes:[I

    const/4 v11, 0x0

    move v12, v1

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    move-object v8, v7

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v11, 0x0

    move v12, v1

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    :cond_1
    move v8, v1

    move v9, v4

    if-ge v8, v9, :cond_2

    .line 549
    move-object v8, v6

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/ArraySet;->mHashes:[I

    move v11, v1

    move v12, v4

    move v13, v1

    sub-int/2addr v12, v13

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 550
    move-object v8, v7

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v11, v1

    move v12, v4

    move v13, v1

    sub-int/2addr v12, v13

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    :cond_2
    :goto_2
    move v8, v2

    move-object v9, v0

    iget v9, v9, Landroidx/collection/ArraySet;->mSize:I

    if-eq v8, v9, :cond_6

    .line 564
    new-instance v8, Ljava/util/ConcurrentModificationException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v8

    .line 531
    :cond_3
    const/16 v8, 0x8

    goto :goto_1

    .line 553
    :cond_4
    move v8, v1

    move v9, v4

    if-ge v8, v9, :cond_5

    .line 558
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mHashes:[I

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/ArraySet;->mHashes:[I

    move v11, v1

    move v12, v4

    move v13, v1

    sub-int/2addr v12, v13

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 559
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v11, v1

    move v12, v4

    move v13, v1

    sub-int/2addr v12, v13

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 561
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v9, v4

    const/4 v10, 0x0

    aput-object v10, v8, v9

    goto :goto_2

    .line 566
    :cond_6
    move-object v8, v0

    move v9, v4

    iput v9, v8, Landroidx/collection/ArraySet;->mSize:I

    goto/16 :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 7
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 782
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move v2, v4

    .line 783
    move-object v4, v0

    iget v4, v4, Landroidx/collection/ArraySet;->mSize:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v4

    :goto_0
    move v4, v3

    if-ltz v4, :cond_1

    .line 784
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v6, v3

    aget-object v5, v5, v6

    invoke-interface {v4, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 785
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 786
    const/4 v4, 0x1

    move v2, v4

    .line 783
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 789
    :cond_1
    move v4, v2

    move v0, v4

    return v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 596
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/collection/ArraySet;->mSize:I

    move v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 602
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroidx/collection/ArraySet;->mSize:I

    new-array v2, v2, [Ljava/lang/Object;

    move-object v1, v2

    .line 603
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 604
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 610
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    array-length v3, v3

    move-object v4, v0

    iget v4, v4, Landroidx/collection/ArraySet;->mSize:I

    if-ge v3, v4, :cond_0

    .line 611
    move-object v3, v1

    .line 612
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    .line 613
    move-object v3, v2

    move-object v1, v3

    .line 615
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 616
    move-object v3, v1

    array-length v3, v3

    move-object v4, v0

    iget v4, v4, Landroidx/collection/ArraySet;->mSize:I

    if-le v3, v4, :cond_1

    .line 617
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/collection/ArraySet;->mSize:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 619
    :cond_1
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 681
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 682
    const-string v4, "{}"

    move-object v0, v4

    .line 699
    :goto_0
    return-object v0

    .line 685
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget v6, v6, Landroidx/collection/ArraySet;->mSize:I

    const/16 v7, 0xe

    mul-int/lit8 v6, v6, 0xe

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    .line 686
    move-object v4, v1

    const/16 v5, 0x7b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 687
    const/4 v4, 0x0

    move v2, v4

    :goto_1
    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/collection/ArraySet;->mSize:I

    if-ge v4, v5, :cond_3

    .line 688
    move v4, v2

    if-lez v4, :cond_1

    .line 689
    move-object v4, v1

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 691
    :cond_1
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 692
    move-object v4, v3

    move-object v5, v0

    if-eq v4, v5, :cond_2

    .line 693
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 687
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 695
    :cond_2
    move-object v4, v1

    const-string v5, "(this Set)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_2

    .line 698
    :cond_3
    move-object v4, v1

    const/16 v5, 0x7d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 699
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 396
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    return-object v0
.end method
