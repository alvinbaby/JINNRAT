.class public Landroidx/collection/SparseArrayCompat;
.super Ljava/lang/Object;
.source "SparseArrayCompat.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 52
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    .line 73
    move v2, v1

    if-nez v2, :cond_0

    .line 74
    move-object v2, v0

    sget-object v3, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v3, v2, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 75
    move-object v2, v0

    sget-object v3, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v3, v2, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 81
    :goto_0
    return-void

    .line 77
    :cond_0
    move v2, v1

    invoke-static {v2}, Landroidx/collection/ContainerHelpers;->idealIntArraySize(I)I

    move-result v2

    move v1, v2

    .line 78
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [I

    iput-object v3, v2, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 79
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v2, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private gc()V
    .locals 11

    .prologue
    .line 231
    move-object v0, p0

    move-object v7, v0

    iget v7, v7, Landroidx/collection/SparseArrayCompat;->mSize:I

    move v1, v7

    .line 232
    const/4 v7, 0x0

    move v2, v7

    .line 233
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    move-object v3, v7

    .line 234
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move-object v4, v7

    .line 236
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v1

    if-ge v7, v8, :cond_2

    .line 237
    move-object v7, v4

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 239
    move-object v7, v6

    sget-object v8, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-eq v7, v8, :cond_1

    .line 240
    move v7, v5

    move v8, v2

    if-eq v7, v8, :cond_0

    .line 241
    move-object v7, v3

    move v8, v2

    move-object v9, v3

    move v10, v5

    aget v9, v9, v10

    aput v9, v7, v8

    .line 242
    move-object v7, v4

    move v8, v2

    move-object v9, v6

    aput-object v9, v7, v8

    .line 243
    move-object v7, v4

    move v8, v5

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 246
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 236
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 250
    :cond_2
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    .line 251
    move-object v7, v0

    move v8, v2

    iput v8, v7, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 254
    return-void
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 461
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v7, v0

    iget v7, v7, Landroidx/collection/SparseArrayCompat;->mSize:I

    if-eqz v7, :cond_0

    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    move-object v9, v0

    iget v9, v9, Landroidx/collection/SparseArrayCompat;->mSize:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    if-gt v7, v8, :cond_0

    .line 462
    move-object v7, v0

    move v8, v1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 488
    :goto_0
    return-void

    .line 466
    :cond_0
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v7, :cond_1

    move-object v7, v0

    iget v7, v7, Landroidx/collection/SparseArrayCompat;->mSize:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    array-length v8, v8

    if-lt v7, v8, :cond_1

    .line 467
    move-object v7, v0

    invoke-direct {v7}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 470
    :cond_1
    move-object v7, v0

    iget v7, v7, Landroidx/collection/SparseArrayCompat;->mSize:I

    move v3, v7

    .line 471
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    array-length v8, v8

    if-lt v7, v8, :cond_2

    .line 472
    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Landroidx/collection/ContainerHelpers;->idealIntArraySize(I)I

    move-result v7

    move v4, v7

    .line 474
    move v7, v4

    new-array v7, v7, [I

    move-object v5, v7

    .line 475
    move v7, v4

    new-array v7, v7, [Ljava/lang/Object;

    move-object v6, v7

    .line 478
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    const/4 v8, 0x0

    move-object v9, v5

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 479
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v9, v6

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 481
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 482
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 485
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    move v8, v3

    move v9, v1

    aput v9, v7, v8

    .line 486
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v2

    aput-object v9, v7, v8

    .line 487
    move-object v7, v0

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 488
    goto :goto_0
.end method

.method public clear()V
    .locals 7

    .prologue
    .line 445
    move-object v0, p0

    move-object v4, v0

    iget v4, v4, Landroidx/collection/SparseArrayCompat;->mSize:I

    move v1, v4

    .line 446
    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move-object v2, v4

    .line 448
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 449
    move-object v4, v2

    move v5, v3

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 448
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 452
    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 453
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    .line 454
    return-void
.end method

.method public clone()Landroidx/collection/SparseArrayCompat;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    move-object v3, v0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/collection/SparseArrayCompat;

    move-object v1, v3

    .line 89
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    iput-object v4, v3, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 90
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    invoke-virtual {v4}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    iput-object v4, v3, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    move-object v3, v1

    move-object v0, v3

    return-object v0

    .line 91
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 92
    new-instance v3, Ljava/lang/AssertionError;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->clone()Landroidx/collection/SparseArrayCompat;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public containsKey(I)Z
    .locals 4

    .prologue
    .line 433
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 438
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

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

.method public delete(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/SparseArrayCompat;->remove(I)V

    .line 133
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    move-object v5, v0

    iget v5, v5, Landroidx/collection/SparseArrayCompat;->mSize:I

    move v6, v1

    invoke-static {v4, v5, v6}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    move-result v4

    move v3, v4

    .line 120
    move v4, v3

    if-ltz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v5, v3

    aget-object v4, v4, v5

    sget-object v5, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    .line 121
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .line 123
    :goto_0
    return-object v0

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v5, v3

    aget-object v4, v4, v5

    move-object v0, v4

    goto :goto_0
.end method

.method public indexOfKey(I)I
    .locals 5

    .prologue
    .line 402
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v2, :cond_0

    .line 403
    move-object v2, v0

    invoke-direct {v2}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 406
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    move-object v3, v0

    iget v3, v3, Landroidx/collection/SparseArrayCompat;->mSize:I

    move v4, v1

    invoke-static {v2, v3, v4}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 420
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v3, :cond_0

    .line 421
    move-object v3, v0

    invoke-direct {v3}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 424
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/collection/SparseArrayCompat;->mSize:I

    if-ge v3, v4, :cond_2

    .line 425
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    if-ne v3, v4, :cond_1

    .line 426
    move v3, v2

    move v0, v3

    .line 428
    :goto_1
    return v0

    .line 424
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    :cond_2
    const/4 v3, -0x1

    move v0, v3

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 353
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyAt(I)I
    .locals 4

    .prologue
    .line 362
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v2, :cond_0

    .line 363
    move-object v2, v0

    invoke-direct {v2}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 366
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    move-object v8, v0

    iget v8, v8, Landroidx/collection/SparseArrayCompat;->mSize:I

    move v9, v1

    invoke-static {v7, v8, v9}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    move-result v7

    move v3, v7

    .line 264
    move v7, v3

    if-ltz v7, :cond_0

    .line 265
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v2

    aput-object v9, v7, v8

    .line 306
    :goto_0
    return-void

    .line 267
    :cond_0
    move v7, v3

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    move v3, v7

    .line 269
    move v7, v3

    move-object v8, v0

    iget v8, v8, Landroidx/collection/SparseArrayCompat;->mSize:I

    if-ge v7, v8, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v8, v3

    aget-object v7, v7, v8

    sget-object v8, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-ne v7, v8, :cond_1

    .line 270
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    move v8, v3

    move v9, v1

    aput v9, v7, v8

    .line 271
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v2

    aput-object v9, v7, v8

    .line 272
    goto :goto_0

    .line 275
    :cond_1
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v7, :cond_2

    move-object v7, v0

    iget v7, v7, Landroidx/collection/SparseArrayCompat;->mSize:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    array-length v8, v8

    if-lt v7, v8, :cond_2

    .line 276
    move-object v7, v0

    invoke-direct {v7}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 279
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    move-object v8, v0

    iget v8, v8, Landroidx/collection/SparseArrayCompat;->mSize:I

    move v9, v1

    invoke-static {v7, v8, v9}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    move-result v7

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    move v3, v7

    .line 282
    :cond_2
    move-object v7, v0

    iget v7, v7, Landroidx/collection/SparseArrayCompat;->mSize:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    array-length v8, v8

    if-lt v7, v8, :cond_3

    .line 283
    move-object v7, v0

    iget v7, v7, Landroidx/collection/SparseArrayCompat;->mSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Landroidx/collection/ContainerHelpers;->idealIntArraySize(I)I

    move-result v7

    move v4, v7

    .line 285
    move v7, v4

    new-array v7, v7, [I

    move-object v5, v7

    .line 286
    move v7, v4

    new-array v7, v7, [Ljava/lang/Object;

    move-object v6, v7

    .line 289
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    const/4 v8, 0x0

    move-object v9, v5

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v9, v6

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 293
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 296
    :cond_3
    move-object v7, v0

    iget v7, v7, Landroidx/collection/SparseArrayCompat;->mSize:I

    move v8, v3

    sub-int/2addr v7, v8

    if-eqz v7, :cond_4

    .line 298
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v0

    iget v11, v11, Landroidx/collection/SparseArrayCompat;->mSize:I

    move v12, v3

    sub-int/2addr v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v0

    iget v11, v11, Landroidx/collection/SparseArrayCompat;->mSize:I

    move v12, v3

    sub-int/2addr v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    move v8, v3

    move v9, v1

    aput v9, v7, v8

    .line 303
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v2

    aput-object v9, v7, v8

    .line 304
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Landroidx/collection/SparseArrayCompat;->mSize:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroidx/collection/SparseArrayCompat;->mSize:I

    goto/16 :goto_0
.end method

.method public putAll(Landroidx/collection/SparseArrayCompat;)V
    .locals 8
    .param p1    # Landroidx/collection/SparseArrayCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SparseArrayCompat",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 314
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move v2, v4

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v4

    move v3, v4

    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_0

    .line 315
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v5

    move-object v6, v1

    move v7, v2

    invoke-virtual {v6, v7}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 317
    :cond_0
    return-void
.end method

.method public putIfAbsent(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 330
    move-object v4, v3

    if-nez v4, :cond_0

    .line 331
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 333
    :cond_0
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method public remove(I)V
    .locals 6

    .prologue
    .line 139
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    move-object v4, v0

    iget v4, v4, Landroidx/collection/SparseArrayCompat;->mSize:I

    move v5, v1

    invoke-static {v3, v4, v5}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    move-result v3

    move v2, v3

    .line 141
    move v3, v2

    if-ltz v3, :cond_0

    .line 142
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v4, v2

    aget-object v3, v3, v4

    sget-object v4, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    .line 143
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v4, v2

    sget-object v5, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    aput-object v5, v3, v4

    .line 144
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    .line 147
    :cond_0
    return-void
.end method

.method public remove(ILjava/lang/Object;)Z
    .locals 7

    .prologue
    .line 156
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result v5

    move v3, v5

    .line 157
    move v5, v3

    if-ltz v5, :cond_1

    .line 158
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 159
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

    .line 160
    :cond_0
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    .line 161
    const/4 v5, 0x1

    move v0, v5

    .line 164
    :goto_0
    return v0

    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public removeAt(I)V
    .locals 5

    .prologue
    .line 171
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v3, v1

    aget-object v2, v2, v3

    sget-object v3, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    .line 172
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v3, v1

    sget-object v4, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    aput-object v4, v2, v3

    .line 173
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    .line 175
    :cond_0
    return-void
.end method

.method public removeAtRange(II)V
    .locals 8

    .prologue
    .line 184
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    iget v5, v5, Landroidx/collection/SparseArrayCompat;->mSize:I

    move v6, v1

    move v7, v2

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v3, v5

    .line 185
    move v5, v1

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 186
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    .line 185
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 188
    :cond_0
    return-void
.end method

.method public replace(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result v5

    move v3, v5

    .line 200
    move v5, v3

    if-ltz v5, :cond_0

    .line 201
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 202
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v6, v3

    move-object v7, v2

    aput-object v7, v5, v6

    .line 203
    move-object v5, v4

    move-object v0, v5

    .line 205
    :goto_0
    return-object v0

    :cond_0
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method public replace(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;TE;)Z"
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result v6

    move v4, v6

    .line 218
    move v6, v4

    if-ltz v6, :cond_1

    .line 219
    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 220
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

    .line 221
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v7, v4

    move-object v8, v3

    aput-object v8, v6, v7

    .line 222
    const/4 v6, 0x1

    move v0, v6

    .line 225
    :goto_0
    return v0

    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 389
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v3, :cond_0

    .line 390
    move-object v3, v0

    invoke-direct {v3}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 393
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v4, v1

    move-object v5, v2

    aput-object v5, v3, v4

    .line 394
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 341
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v1, :cond_0

    .line 342
    move-object v1, v0

    invoke-direct {v1}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 345
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/collection/SparseArrayCompat;->mSize:I

    move v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 499
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 500
    const-string v5, "{}"

    move-object v0, v5

    .line 520
    :goto_0
    return-object v0

    .line 503
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget v7, v7, Landroidx/collection/SparseArrayCompat;->mSize:I

    const/16 v8, 0x1c

    mul-int/lit8 v7, v7, 0x1c

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v5

    .line 504
    move-object v5, v1

    const/16 v6, 0x7b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 505
    const/4 v5, 0x0

    move v2, v5

    :goto_1
    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/collection/SparseArrayCompat;->mSize:I

    if-ge v5, v6, :cond_3

    .line 506
    move v5, v2

    if-lez v5, :cond_1

    .line 507
    move-object v5, v1

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 509
    :cond_1
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v5

    move v3, v5

    .line 510
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 511
    move-object v5, v1

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 512
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 513
    move-object v5, v4

    move-object v6, v0

    if-eq v5, v6, :cond_2

    .line 514
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 505
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 516
    :cond_2
    move-object v5, v1

    const-string v6, "(this Map)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_2

    .line 519
    :cond_3
    move-object v5, v1

    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 520
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

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
    .line 376
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v2, :cond_0

    .line 377
    move-object v2, v0

    invoke-direct {v2}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 380
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    return-object v0
.end method
