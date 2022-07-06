.class public final Landroidx/collection/CircularIntArray;
.super Ljava/lang/Object;
.source "CircularIntArray.java"


# instance fields
.field private mCapacityBitmask:I

.field private mElements:[I

.field private mHead:I

.field private mTail:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Landroidx/collection/CircularIntArray;-><init>(I)V

    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .prologue
    .line 59
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 60
    move v3, v1

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 61
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "capacity must be >= 1"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 63
    :cond_0
    move v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    if-le v3, v4, :cond_1

    .line 64
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "capacity must be <= 2^30"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 70
    :cond_1
    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 71
    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v3

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    move v2, v3

    .line 76
    :goto_0
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    .line 77
    move-object v3, v0

    move v4, v2

    new-array v4, v4, [I

    iput-object v4, v3, Landroidx/collection/CircularIntArray;->mElements:[I

    .line 78
    return-void

    .line 73
    :cond_2
    move v3, v1

    move v2, v3

    goto :goto_0
.end method

.method private doubleCapacity()V
    .locals 11

    .prologue
    .line 31
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/CircularIntArray;->mElements:[I

    array-length v5, v5

    move v1, v5

    .line 32
    move v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/collection/CircularIntArray;->mHead:I

    sub-int/2addr v5, v6

    move v2, v5

    .line 33
    move v5, v1

    const/4 v6, 0x1

    shl-int/lit8 v5, v5, 0x1

    move v3, v5

    .line 34
    move v5, v3

    if-gez v5, :cond_0

    .line 35
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "Max array capacity exceeded"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 37
    :cond_0
    move v5, v3

    new-array v5, v5, [I

    move-object v4, v5

    .line 38
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/CircularIntArray;->mElements:[I

    move-object v6, v0

    iget v6, v6, Landroidx/collection/CircularIntArray;->mHead:I

    move-object v7, v4

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/CircularIntArray;->mElements:[I

    const/4 v6, 0x0

    move-object v7, v4

    move v8, v2

    move-object v9, v0

    iget v9, v9, Landroidx/collection/CircularIntArray;->mHead:I

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroidx/collection/CircularIntArray;->mElements:[I

    .line 41
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/collection/CircularIntArray;->mHead:I

    .line 42
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/collection/CircularIntArray;->mTail:I

    .line 43
    move-object v5, v0

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    .line 44
    return-void
.end method


# virtual methods
.method public addFirst(I)V
    .locals 5

    .prologue
    .line 85
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularIntArray;->mHead:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v4, v0

    iget v4, v4, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    iput v3, v2, Landroidx/collection/CircularIntArray;->mHead:I

    .line 86
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/CircularIntArray;->mElements:[I

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularIntArray;->mHead:I

    move v4, v1

    aput v4, v2, v3

    .line 87
    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularIntArray;->mHead:I

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularIntArray;->mTail:I

    if-ne v2, v3, :cond_0

    .line 88
    move-object v2, v0

    invoke-direct {v2}, Landroidx/collection/CircularIntArray;->doubleCapacity()V

    .line 90
    :cond_0
    return-void
.end method

.method public addLast(I)V
    .locals 5

    .prologue
    .line 97
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/CircularIntArray;->mElements:[I

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularIntArray;->mTail:I

    move v4, v1

    aput v4, v2, v3

    .line 98
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularIntArray;->mTail:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    iget v4, v4, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    iput v3, v2, Landroidx/collection/CircularIntArray;->mTail:I

    .line 99
    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularIntArray;->mTail:I

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularIntArray;->mHead:I

    if-ne v2, v3, :cond_0

    .line 100
    move-object v2, v0

    invoke-direct {v2}, Landroidx/collection/CircularIntArray;->doubleCapacity()V

    .line 102
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularIntArray;->mHead:I

    iput v2, v1, Landroidx/collection/CircularIntArray;->mTail:I

    .line 134
    return-void
.end method

.method public get(I)I
    .locals 6

    .prologue
    .line 197
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/collection/CircularIntArray;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 198
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/CircularIntArray;->mElements:[I

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularIntArray;->mHead:I

    move v4, v1

    add-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    aget v2, v2, v3

    move v0, v2

    return v0
.end method

.method public getFirst()I
    .locals 4

    .prologue
    .line 176
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/collection/CircularIntArray;->mHead:I

    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularIntArray;->mTail:I

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 177
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/CircularIntArray;->mElements:[I

    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularIntArray;->mHead:I

    aget v1, v1, v2

    move v0, v1

    return v0
.end method

.method public getLast()I
    .locals 5

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/collection/CircularIntArray;->mHead:I

    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularIntArray;->mTail:I

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 187
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/CircularIntArray;->mElements:[I

    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularIntArray;->mTail:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v2, v3

    aget v1, v1, v2

    move v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/collection/CircularIntArray;->mHead:I

    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularIntArray;->mTail:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public popFirst()I
    .locals 6

    .prologue
    .line 110
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularIntArray;->mHead:I

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularIntArray;->mTail:I

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 111
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/CircularIntArray;->mElements:[I

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularIntArray;->mHead:I

    aget v2, v2, v3

    move v1, v2

    .line 112
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularIntArray;->mHead:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    iget v4, v4, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    iput v3, v2, Landroidx/collection/CircularIntArray;->mHead:I

    .line 113
    move v2, v1

    move v0, v2

    return v0
.end method

.method public popLast()I
    .locals 6

    .prologue
    .line 122
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularIntArray;->mHead:I

    move-object v4, v0

    iget v4, v4, Landroidx/collection/CircularIntArray;->mTail:I

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 123
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularIntArray;->mTail:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v4, v0

    iget v4, v4, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    move v1, v3

    .line 124
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/CircularIntArray;->mElements:[I

    move v4, v1

    aget v3, v3, v4

    move v2, v3

    .line 125
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/collection/CircularIntArray;->mTail:I

    .line 126
    move v3, v2

    move v0, v3

    return v0
.end method

.method public removeFromEnd(I)V
    .locals 6

    .prologue
    .line 161
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-gtz v2, :cond_0

    .line 168
    :goto_0
    return-void

    .line 164
    :cond_0
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/collection/CircularIntArray;->size()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 165
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 167
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularIntArray;->mTail:I

    move v4, v1

    sub-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    iput v3, v2, Landroidx/collection/CircularIntArray;->mTail:I

    .line 168
    goto :goto_0
.end method

.method public removeFromStart(I)V
    .locals 6

    .prologue
    .line 144
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-gtz v2, :cond_0

    .line 151
    :goto_0
    return-void

    .line 147
    :cond_0
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/collection/CircularIntArray;->size()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 148
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 150
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularIntArray;->mHead:I

    move v4, v1

    add-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    iput v3, v2, Landroidx/collection/CircularIntArray;->mHead:I

    .line 151
    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 206
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/collection/CircularIntArray;->mTail:I

    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularIntArray;->mHead:I

    sub-int/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    move v0, v1

    return v0
.end method
