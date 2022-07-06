.class Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;
.super Ljava/io/InputStream;
.source "com.google.firebase:firebase-storage@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/StreamDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StreamProgressWrapper"
.end annotation


# instance fields
.field private mDownloadedBytes:J

.field private mInputStreamCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private mLastExceptionPosition:J

.field private mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mStreamClosed:Z

.field private mTemporaryException:Ljava/io/IOException;

.field private mWrappedStream:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lcom/google/firebase/storage/StreamDownloadTask;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parentTask"    # Lcom/google/firebase/storage/StreamDownloadTask;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/firebase/storage/StreamDownloadTask;",
            ")V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "inputStreamCallable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/io/InputStream;>;"
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 274
    iput-object p2, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    .line 275
    iput-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mInputStreamCallable:Ljava/util/concurrent/Callable;

    .line 276
    return-void
.end method

.method static synthetic access$100(Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->ensureStream()Z

    move-result v0

    return v0
.end method

.method private checkCancel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StreamDownloadTask;->getInternalState()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 280
    new-instance v0, Lcom/google/firebase/storage/CancelException;

    invoke-direct {v0}, Lcom/google/firebase/storage/CancelException;-><init>()V

    throw v0

    .line 282
    :cond_0
    return-void
.end method

.method private ensureStream()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 292
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->checkCancel()V

    .line 294
    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    if-eqz v1, :cond_2

    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 303
    :cond_0
    :goto_0
    iput-object v6, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    .line 305
    iget-wide v2, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mLastExceptionPosition:J

    iget-wide v4, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mDownloadedBytes:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 306
    const-string v1, "StreamDownloadTask"

    const-string v2, "Encountered exception during stream operation. Aborting."

    iget-object v3, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    const/4 v1, 0x0

    .line 335
    :goto_1
    return v1

    .line 310
    :cond_1
    const-string v1, "StreamDownloadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered exception during stream operation. Retrying at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mDownloadedBytes:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    iget-wide v2, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mDownloadedBytes:J

    iput-wide v2, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mLastExceptionPosition:J

    .line 315
    iput-object v6, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    .line 319
    :cond_2
    iget-boolean v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mStreamClosed:Z

    if-eqz v1, :cond_3

    .line 320
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Can\'t perform operation on closed stream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    :cond_3
    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    if-nez v1, :cond_4

    .line 325
    :try_start_1
    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mInputStreamCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    iput-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 335
    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_5

    .line 328
    check-cast v0, Ljava/io/IOException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 330
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to open stream"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 299
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private recordDownloadedBytes(J)V
    .locals 3
    .param p1, "delta"    # J

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/storage/StreamDownloadTask;->recordDownloadedBytes(J)V

    .line 288
    :cond_0
    iget-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mDownloadedBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mDownloadedBytes:J

    .line 289
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->ensureStream()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    goto :goto_0

    .line 365
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    throw v1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 373
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mStreamClosed:Z

    .line 374
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-static {v0}, Lcom/google/firebase/storage/StreamDownloadTask;->access$200(Lcom/google/firebase/storage/StreamDownloadTask;)Lcom/google/firebase/storage/network/NetworkRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-static {v0}, Lcom/google/firebase/storage/StreamDownloadTask;->access$200(Lcom/google/firebase/storage/StreamDownloadTask;)Lcom/google/firebase/storage/network/NetworkRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/network/NetworkRequest;->performRequestEnd()V

    .line 376
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/firebase/storage/StreamDownloadTask;->access$202(Lcom/google/firebase/storage/StreamDownloadTask;Lcom/google/firebase/storage/network/NetworkRequest;)Lcom/google/firebase/storage/network/NetworkRequest;

    .line 379
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->checkCancel()V

    .line 380
    return-void
.end method

.method public mark(I)V
    .locals 0
    .param p1, "readlimit"    # I

    .prologue
    .line 383
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->ensureStream()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 343
    .local v1, "returnValue":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 344
    const-wide/16 v2, 0x1

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->recordDownloadedBytes(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :cond_0
    return v1

    .line 347
    .end local v1    # "returnValue":I
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    goto :goto_0

    .line 352
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    throw v2
.end method

.method public read([BII)I
    .locals 10
    .param p1, "buffer"    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 392
    const/4 v0, 0x0

    .line 393
    .local v0, "bytesRead":I
    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->ensureStream()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 395
    :goto_1
    int-to-long v6, p3

    const-wide/32 v8, 0x40000

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    .line 396
    :try_start_0
    iget-object v5, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    const/high16 v6, 0x40000

    .line 397
    invoke-virtual {v5, p1, p2, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 398
    .local v2, "deltaBytesRead":I
    if-ne v2, v4, :cond_2

    .line 399
    if-nez v0, :cond_1

    .line 418
    .end local v2    # "deltaBytesRead":I
    :cond_0
    :goto_2
    return v4

    .restart local v2    # "deltaBytesRead":I
    :cond_1
    move v4, v0

    .line 399
    goto :goto_2

    .line 401
    :cond_2
    add-int/2addr v0, v2

    .line 402
    add-int/2addr p2, v2

    .line 403
    sub-int/2addr p3, v2

    .line 404
    int-to-long v6, v2

    invoke-direct {p0, v6, v7}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->recordDownloadedBytes(J)V

    .line 405
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->checkCancel()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 420
    .end local v2    # "deltaBytesRead":I
    :catch_0
    move-exception v3

    .line 421
    .local v3, "e":Ljava/io/IOException;
    iput-object v3, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    goto :goto_0

    .line 407
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    if-lez p3, :cond_5

    .line 408
    :try_start_1
    iget-object v5, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v5, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 409
    .restart local v2    # "deltaBytesRead":I
    if-ne v2, v4, :cond_4

    .line 410
    if-eqz v0, :cond_0

    move v4, v0

    goto :goto_2

    .line 412
    :cond_4
    add-int/2addr p2, v2

    .line 413
    add-int/2addr v0, v2

    .line 414
    sub-int/2addr p3, v2

    .line 415
    int-to-long v6, v2

    invoke-direct {p0, v6, v7}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->recordDownloadedBytes(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v2    # "deltaBytesRead":I
    :cond_5
    move v1, v0

    .line 417
    .end local v0    # "bytesRead":I
    .local v1, "bytesRead":I
    if-nez p3, :cond_6

    move v0, v1

    .end local v1    # "bytesRead":I
    .restart local v0    # "bytesRead":I
    move v4, v1

    .line 418
    goto :goto_2

    .end local v0    # "bytesRead":I
    .restart local v1    # "bytesRead":I
    :cond_6
    move v0, v1

    .line 422
    .end local v1    # "bytesRead":I
    .restart local v0    # "bytesRead":I
    goto :goto_0

    .line 425
    :cond_7
    iget-object v4, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    throw v4
.end method

.method public skip(J)J
    .locals 11
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    const-wide/16 v0, 0x0

    .line 432
    .local v0, "bytesSkipped":J
    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->ensureStream()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 434
    :goto_1
    const-wide/32 v8, 0x40000

    cmp-long v7, p1, v8

    if-lez v7, :cond_2

    .line 435
    :try_start_0
    iget-object v7, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    const-wide/32 v8, 0x40000

    invoke-virtual {v7, v8, v9}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    .line 436
    .local v4, "deltaBytesSkipped":J
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-gez v7, :cond_1

    .line 437
    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-nez v7, :cond_0

    const-wide/16 v8, -0x1

    .line 454
    .end local v4    # "deltaBytesSkipped":J
    :goto_2
    return-wide v8

    .restart local v4    # "deltaBytesSkipped":J
    :cond_0
    move-wide v8, v0

    .line 437
    goto :goto_2

    .line 439
    :cond_1
    add-long/2addr v0, v4

    .line 440
    sub-long/2addr p1, v4

    .line 441
    invoke-direct {p0, v4, v5}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->recordDownloadedBytes(J)V

    .line 442
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->checkCancel()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 456
    .end local v4    # "deltaBytesSkipped":J
    :catch_0
    move-exception v6

    .line 457
    .local v6, "e":Ljava/io/IOException;
    iput-object v6, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    goto :goto_0

    .line 444
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v7, p1, v8

    if-lez v7, :cond_5

    .line 445
    :try_start_1
    iget-object v7, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v7, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    .line 446
    .restart local v4    # "deltaBytesSkipped":J
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-gez v7, :cond_4

    .line 447
    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-nez v7, :cond_3

    const-wide/16 v8, -0x1

    goto :goto_2

    :cond_3
    move-wide v8, v0

    goto :goto_2

    .line 449
    :cond_4
    add-long/2addr v0, v4

    .line 450
    sub-long/2addr p1, v4

    .line 451
    invoke-direct {p0, v4, v5}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->recordDownloadedBytes(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v4    # "deltaBytesSkipped":J
    :cond_5
    move-wide v2, v0

    .line 453
    .end local v0    # "bytesSkipped":J
    .local v2, "bytesSkipped":J
    const-wide/16 v8, 0x0

    cmp-long v7, p1, v8

    if-nez v7, :cond_6

    move-wide v0, v2

    .end local v2    # "bytesSkipped":J
    .restart local v0    # "bytesSkipped":J
    move-wide v8, v2

    .line 454
    goto :goto_2

    .end local v0    # "bytesSkipped":J
    .restart local v2    # "bytesSkipped":J
    :cond_6
    move-wide v0, v2

    .line 458
    .end local v2    # "bytesSkipped":J
    .restart local v0    # "bytesSkipped":J
    goto :goto_0

    .line 461
    :cond_7
    iget-object v7, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    throw v7
.end method
