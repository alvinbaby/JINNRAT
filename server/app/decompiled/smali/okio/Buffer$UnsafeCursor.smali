.class public final Lokio/Buffer$UnsafeCursor;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsafeCursor"
.end annotation


# instance fields
.field public buffer:Lokio/Buffer;

.field public data:[B

.field public end:I

.field public offset:J

.field public readWrite:Z

.field private segment:Lokio/Segment;

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 2070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2075
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2077
    iput v2, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2078
    iput v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2298
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v0, :cond_0

    .line 2299
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2302
    :cond_0
    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 2303
    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2304
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2305
    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2306
    iput v3, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2307
    iput v3, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2308
    return-void
.end method

.method public final expandBuffer(I)J
    .locals 8
    .param p1, "minByteCount"    # I

    .prologue
    const/16 v5, 0x2000

    .line 2267
    if-gtz p1, :cond_0

    .line 2268
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "minByteCount <= 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2270
    :cond_0
    if-le p1, v5, :cond_1

    .line 2271
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "minByteCount > Segment.SIZE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2273
    :cond_1
    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v4, :cond_2

    .line 2274
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "not attached to a buffer"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2276
    :cond_2
    iget-boolean v4, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-nez v4, :cond_3

    .line 2277
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "expandBuffer() only permitted for read/write buffers"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2280
    :cond_3
    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v0, v4, Lokio/Buffer;->size:J

    .line 2281
    .local v0, "oldSize":J
    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    invoke-virtual {v4, p1}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v3

    .line 2282
    .local v3, "tail":Lokio/Segment;
    iget v4, v3, Lokio/Segment;->limit:I

    rsub-int v2, v4, 0x2000

    .line 2283
    .local v2, "result":I
    iput v5, v3, Lokio/Segment;->limit:I

    .line 2284
    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    int-to-long v6, v2

    add-long/2addr v6, v0

    iput-wide v6, v4, Lokio/Buffer;->size:J

    .line 2287
    iput-object v3, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2288
    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2289
    iget-object v4, v3, Lokio/Segment;->data:[B

    iput-object v4, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2290
    rsub-int v4, v2, 0x2000

    iput v4, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2291
    iput v5, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2293
    int-to-long v4, v2

    return-wide v4
.end method

.method public final next()I
    .locals 4

    .prologue
    .line 2086
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 2087
    :cond_0
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    .line 2088
    :goto_0
    return v0

    :cond_1
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    iget v3, p0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    goto :goto_0
.end method

.method public final resizeBuffer(J)J
    .locals 13
    .param p1, "newSize"    # J

    .prologue
    .line 2186
    iget-object v10, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v10, :cond_0

    .line 2187
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "not attached to a buffer"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2189
    :cond_0
    iget-boolean v10, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-nez v10, :cond_1

    .line 2190
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "resizeBuffer() only permitted for read/write buffers"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2193
    :cond_1
    iget-object v10, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v6, v10, Lokio/Buffer;->size:J

    .line 2194
    .local v6, "oldSize":J
    cmp-long v10, p1, v6

    if-gtz v10, :cond_6

    .line 2195
    const-wide/16 v10, 0x0

    cmp-long v10, p1, v10

    if-gez v10, :cond_2

    .line 2196
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "newSize < 0: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2199
    :cond_2
    sub-long v2, v6, p1

    .local v2, "bytesToSubtract":J
    :goto_0
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_4

    .line 2200
    iget-object v10, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v10, v10, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v8, v10, Lokio/Segment;->prev:Lokio/Segment;

    .line 2201
    .local v8, "tail":Lokio/Segment;
    iget v10, v8, Lokio/Segment;->limit:I

    iget v11, v8, Lokio/Segment;->pos:I

    sub-int v9, v10, v11

    .line 2202
    .local v9, "tailSize":I
    int-to-long v10, v9

    cmp-long v10, v10, v2

    if-gtz v10, :cond_3

    .line 2203
    iget-object v10, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    invoke-virtual {v8}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v11

    iput-object v11, v10, Lokio/Buffer;->head:Lokio/Segment;

    .line 2204
    invoke-static {v8}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 2205
    int-to-long v10, v9

    sub-long/2addr v2, v10

    goto :goto_0

    .line 2207
    :cond_3
    iget v10, v8, Lokio/Segment;->limit:I

    int-to-long v10, v10

    sub-long/2addr v10, v2

    long-to-int v10, v10

    iput v10, v8, Lokio/Segment;->limit:I

    .line 2212
    .end local v8    # "tail":Lokio/Segment;
    .end local v9    # "tailSize":I
    :cond_4
    const/4 v10, 0x0

    iput-object v10, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2213
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2214
    const/4 v10, 0x0

    iput-object v10, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2215
    const/4 v10, -0x1

    iput v10, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2216
    const/4 v10, -0x1

    iput v10, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2238
    .end local v2    # "bytesToSubtract":J
    :cond_5
    iget-object v10, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iput-wide p1, v10, Lokio/Buffer;->size:J

    .line 2240
    return-wide v6

    .line 2217
    :cond_6
    cmp-long v10, p1, v6

    if-lez v10, :cond_5

    .line 2219
    const/4 v4, 0x1

    .line 2220
    .local v4, "needsToSeek":Z
    sub-long v0, p1, v6

    .local v0, "bytesToAdd":J
    :cond_7
    :goto_1
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-lez v10, :cond_5

    .line 2221
    iget-object v10, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v8

    .line 2222
    .restart local v8    # "tail":Lokio/Segment;
    iget v10, v8, Lokio/Segment;->limit:I

    rsub-int v10, v10, 0x2000

    int-to-long v10, v10

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v5, v10

    .line 2223
    .local v5, "segmentBytesToAdd":I
    iget v10, v8, Lokio/Segment;->limit:I

    add-int/2addr v10, v5

    iput v10, v8, Lokio/Segment;->limit:I

    .line 2224
    int-to-long v10, v5

    sub-long/2addr v0, v10

    .line 2227
    if-eqz v4, :cond_7

    .line 2228
    iput-object v8, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2229
    iput-wide v6, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2230
    iget-object v10, v8, Lokio/Segment;->data:[B

    iput-object v10, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2231
    iget v10, v8, Lokio/Segment;->limit:I

    sub-int/2addr v10, v5

    iput v10, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2232
    iget v10, v8, Lokio/Segment;->limit:I

    iput v10, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2233
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public final seek(J)I
    .locals 23
    .param p1, "offset"    # J

    .prologue
    .line 2097
    const-wide/16 v16, -0x1

    cmp-long v16, p1, v16

    if-ltz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v16, v0

    cmp-long v16, p1, v16

    if-lez v16, :cond_1

    .line 2098
    :cond_0
    new-instance v16, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v17, "offset=%s > size=%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 2099
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 2102
    :cond_1
    const-wide/16 v16, -0x1

    cmp-long v16, p1, v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v16, v0

    cmp-long v16, p1, v16

    if-nez v16, :cond_3

    .line 2103
    :cond_2
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2104
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2105
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2106
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2107
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2108
    const/16 v16, -0x1

    .line 2165
    :goto_0
    return v16

    .line 2112
    :cond_3
    const-wide/16 v8, 0x0

    .line 2113
    .local v8, "min":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v6, v0, Lokio/Buffer;->size:J

    .line 2114
    .local v6, "max":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 2115
    .local v4, "head":Lokio/Segment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v14, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 2116
    .local v14, "tail":Lokio/Segment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 2117
    move-object/from16 v0, p0

    iget-wide v0, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lokio/Buffer$UnsafeCursor;->start:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v12, v16, v18

    .line 2118
    .local v12, "segmentOffset":J
    cmp-long v16, v12, p1

    if-lez v16, :cond_5

    .line 2120
    move-wide v6, v12

    .line 2121
    move-object/from16 v0, p0

    iget-object v14, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2131
    .end local v12    # "segmentOffset":J
    :cond_4
    :goto_1
    sub-long v16, v6, p1

    sub-long v18, p1, v8

    cmp-long v16, v16, v18

    if-lez v16, :cond_6

    .line 2133
    move-object v5, v4

    .line 2134
    .local v5, "next":Lokio/Segment;
    move-wide v10, v8

    .line 2135
    .local v10, "nextOffset":J
    :goto_2
    iget v0, v5, Lokio/Segment;->limit:I

    move/from16 v16, v0

    iget v0, v5, Lokio/Segment;->pos:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v16, v16, v10

    cmp-long v16, p1, v16

    if-ltz v16, :cond_7

    .line 2136
    iget v0, v5, Lokio/Segment;->limit:I

    move/from16 v16, v0

    iget v0, v5, Lokio/Segment;->pos:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v10, v10, v16

    .line 2137
    iget-object v5, v5, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_2

    .line 2124
    .end local v5    # "next":Lokio/Segment;
    .end local v10    # "nextOffset":J
    .restart local v12    # "segmentOffset":J
    :cond_5
    move-wide v8, v12

    .line 2125
    move-object/from16 v0, p0

    iget-object v4, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    goto :goto_1

    .line 2141
    .end local v12    # "segmentOffset":J
    :cond_6
    move-object v5, v14

    .line 2142
    .restart local v5    # "next":Lokio/Segment;
    move-wide v10, v6

    .line 2143
    .restart local v10    # "nextOffset":J
    :goto_3
    cmp-long v16, v10, p1

    if-lez v16, :cond_7

    .line 2144
    iget-object v5, v5, Lokio/Segment;->prev:Lokio/Segment;

    .line 2145
    iget v0, v5, Lokio/Segment;->limit:I

    move/from16 v16, v0

    iget v0, v5, Lokio/Segment;->pos:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v10, v10, v16

    goto :goto_3

    .line 2150
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    move/from16 v16, v0

    if-eqz v16, :cond_9

    iget-boolean v0, v5, Lokio/Segment;->shared:Z

    move/from16 v16, v0

    if-eqz v16, :cond_9

    .line 2151
    invoke-virtual {v5}, Lokio/Segment;->unsharedCopy()Lokio/Segment;

    move-result-object v15

    .line 2152
    .local v15, "unsharedNext":Lokio/Segment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v0, v5, :cond_8

    .line 2153
    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v15, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 2155
    :cond_8
    invoke-virtual {v5, v15}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v5

    .line 2156
    iget-object v0, v5, Lokio/Segment;->prev:Lokio/Segment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lokio/Segment;->pop()Lokio/Segment;

    .line 2160
    .end local v15    # "unsharedNext":Lokio/Segment;
    :cond_9
    move-object/from16 v0, p0

    iput-object v5, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2161
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2162
    iget-object v0, v5, Lokio/Segment;->data:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2163
    iget v0, v5, Lokio/Segment;->pos:I

    move/from16 v16, v0

    sub-long v18, p1, v10

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2164
    iget v0, v5, Lokio/Segment;->limit:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2165
    move-object/from16 v0, p0

    iget v0, v0, Lokio/Buffer$UnsafeCursor;->end:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lokio/Buffer$UnsafeCursor;->start:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    goto/16 :goto_0
.end method
