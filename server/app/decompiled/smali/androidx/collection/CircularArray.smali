.class public final Landroidx/collection/CircularArray;
.super Ljava/lang/Object;
.source "CircularArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCapacityBitmask:I

.field private mElements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

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

    invoke-direct {v1, v2}, Landroidx/collection/CircularArray;-><init>(I)V

    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .prologue
    .line 60
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 61
    move v3, v1

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 62
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "capacity must be >= 1"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 64
    :cond_0
    move v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    if-le v3, v4, :cond_1

    .line 65
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "capacity must be <= 2^30"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 71
    :cond_1
    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 72
    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v3

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    move v2, v3

    .line 77
    :goto_0
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    .line 78
    move-object v3, v0

    move v4, v2

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, v3, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    .line 79
    return-void

    .line 74
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

    iget-object v5, v5, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v5, v5

    move v1, v5

    .line 32
    move v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/collection/CircularArray;->mHead:I

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

    new-array v5, v5, [Ljava/lang/Object;

    move-object v4, v5

    .line 38
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move-object v6, v0

    iget v6, v6, Landroidx/collection/CircularArray;->mHead:I

    move-object v7, v4

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v7, v4

    move v8, v2

    move-object v9, v0

    iget v9, v9, Landroidx/collection/CircularArray;->mHead:I

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    .line 41
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/collection/CircularArray;->mHead:I

    .line 42
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/collection/CircularArray;->mTail:I

    .line 43
    move-object v5, v0

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    .line 44
    return-void
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mHead:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v4, v0

    iget v4, v4, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    iput v3, v2, Landroidx/collection/CircularArray;->mHead:I

    .line 87
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mHead:I

    move-object v4, v1

    aput-object v4, v2, v3

    .line 88
    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularArray;->mHead:I

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mTail:I

    if-ne v2, v3, :cond_0

    .line 89
    move-object v2, v0

    invoke-direct {v2}, Landroidx/collection/CircularArray;->doubleCapacity()V

    .line 91
    :cond_0
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mTail:I

    move-object v4, v1

    aput-object v4, v2, v3

    .line 99
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mTail:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    iget v4, v4, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    iput v3, v2, Landroidx/collection/CircularArray;->mTail:I

    .line 100
    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularArray;->mTail:I

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mHead:I

    if-ne v2, v3, :cond_0

    .line 101
    move-object v2, v0

    invoke-direct {v2}, Landroidx/collection/CircularArray;->doubleCapacity()V

    .line 103
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/collection/CircularArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/collection/CircularArray;->removeFromStart(I)V

    .line 141
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/collection/CircularArray;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 243
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 245
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mHead:I

    move v4, v1

    add-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    aget-object v2, v2, v3

    move-object v0, v2

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/collection/CircularArray;->mHead:I

    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularArray;->mTail:I

    if-ne v1, v2, :cond_0

    .line 218
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 220
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularArray;->mHead:I

    aget-object v1, v1, v2

    move-object v0, v1

    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/collection/CircularArray;->mHead:I

    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularArray;->mTail:I

    if-ne v1, v2, :cond_0

    .line 230
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 232
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularArray;->mTail:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v2, v3

    aget-object v1, v1, v2

    move-object v0, v1

    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 261
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/collection/CircularArray;->mHead:I

    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularArray;->mTail:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public popFirst()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularArray;->mHead:I

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mTail:I

    if-ne v2, v3, :cond_0

    .line 112
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 114
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mHead:I

    aget-object v2, v2, v3

    move-object v1, v2

    .line 115
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mHead:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 116
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mHead:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    iget v4, v4, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    iput v3, v2, Landroidx/collection/CircularArray;->mHead:I

    .line 117
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public popLast()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mHead:I

    move-object v4, v0

    iget v4, v4, Landroidx/collection/CircularArray;->mTail:I

    if-ne v3, v4, :cond_0

    .line 127
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 129
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mTail:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v4, v0

    iget v4, v4, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    move v1, v3

    .line 130
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 131
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move v4, v1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 132
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/collection/CircularArray;->mTail:I

    .line 133
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public removeFromEnd(I)V
    .locals 10

    .prologue
    .line 184
    move-object v0, p0

    move v1, p1

    move v6, v1

    if-gtz v6, :cond_0

    .line 209
    :goto_0
    return-void

    .line 187
    :cond_0
    move v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/collection/CircularArray;->size()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 188
    new-instance v6, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v6

    .line 190
    :cond_1
    const/4 v6, 0x0

    move v2, v6

    .line 191
    move v6, v1

    move-object v7, v0

    iget v7, v7, Landroidx/collection/CircularArray;->mTail:I

    if-ge v6, v7, :cond_2

    .line 192
    move-object v6, v0

    iget v6, v6, Landroidx/collection/CircularArray;->mTail:I

    move v7, v1

    sub-int/2addr v6, v7

    move v2, v6

    .line 194
    :cond_2
    move v6, v2

    move v3, v6

    :goto_1
    move v6, v3

    move-object v7, v0

    iget v7, v7, Landroidx/collection/CircularArray;->mTail:I

    if-ge v6, v7, :cond_3

    .line 195
    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move v7, v3

    const/4 v8, 0x0

    aput-object v8, v6, v7

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 197
    :cond_3
    move-object v6, v0

    iget v6, v6, Landroidx/collection/CircularArray;->mTail:I

    move v7, v2

    sub-int/2addr v6, v7

    move v3, v6

    .line 198
    move v6, v1

    move v7, v3

    sub-int/2addr v6, v7

    move v1, v6

    .line 199
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/collection/CircularArray;->mTail:I

    move v8, v3

    sub-int/2addr v7, v8

    iput v7, v6, Landroidx/collection/CircularArray;->mTail:I

    .line 200
    move v6, v1

    if-lez v6, :cond_5

    .line 202
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v7, v7

    iput v7, v6, Landroidx/collection/CircularArray;->mTail:I

    .line 203
    move-object v6, v0

    iget v6, v6, Landroidx/collection/CircularArray;->mTail:I

    move v7, v1

    sub-int/2addr v6, v7

    move v4, v6

    .line 204
    move v6, v4

    move v5, v6

    :goto_2
    move v6, v5

    move-object v7, v0

    iget v7, v7, Landroidx/collection/CircularArray;->mTail:I

    if-ge v6, v7, :cond_4

    .line 205
    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move v7, v5

    const/4 v8, 0x0

    aput-object v8, v6, v7

    .line 204
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 207
    :cond_4
    move-object v6, v0

    move v7, v4

    iput v7, v6, Landroidx/collection/CircularArray;->mTail:I

    .line 209
    :cond_5
    goto :goto_0
.end method

.method public removeFromStart(I)V
    .locals 9

    .prologue
    .line 151
    move-object v0, p0

    move v1, p1

    move v5, v1

    if-gtz v5, :cond_0

    .line 174
    :goto_0
    return-void

    .line 154
    :cond_0
    move v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/collection/CircularArray;->size()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 155
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v5

    .line 157
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v5, v5

    move v2, v5

    .line 158
    move v5, v1

    move v6, v2

    move-object v7, v0

    iget v7, v7, Landroidx/collection/CircularArray;->mHead:I

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_2

    .line 159
    move-object v5, v0

    iget v5, v5, Landroidx/collection/CircularArray;->mHead:I

    move v6, v1

    add-int/2addr v5, v6

    move v2, v5

    .line 161
    :cond_2
    move-object v5, v0

    iget v5, v5, Landroidx/collection/CircularArray;->mHead:I

    move v3, v5

    :goto_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_3

    .line 162
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move v6, v3

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 164
    :cond_3
    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/collection/CircularArray;->mHead:I

    sub-int/2addr v5, v6

    move v3, v5

    .line 165
    move v5, v1

    move v6, v3

    sub-int/2addr v5, v6

    move v1, v5

    .line 166
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroidx/collection/CircularArray;->mHead:I

    move v7, v3

    add-int/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v6, v7

    iput v6, v5, Landroidx/collection/CircularArray;->mHead:I

    .line 167
    move v5, v1

    if-lez v5, :cond_5

    .line 169
    const/4 v5, 0x0

    move v4, v5

    :goto_2
    move v5, v4

    move v6, v1

    if-ge v5, v6, :cond_4

    .line 170
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move v6, v4

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 169
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 172
    :cond_4
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/collection/CircularArray;->mHead:I

    .line 174
    :cond_5
    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 253
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/collection/CircularArray;->mTail:I

    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularArray;->mHead:I

    sub-int/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    move v0, v1

    return v0
.end method
