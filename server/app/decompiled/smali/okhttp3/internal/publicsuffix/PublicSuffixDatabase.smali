.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.java"


# static fields
.field private static final EMPTY_RULE:[Ljava/lang/String;

.field private static final EXCEPTION_MARKER:B = 0x21t

.field private static final PREVAILING_RULE:[Ljava/lang/String;

.field public static final PUBLIC_SUFFIX_RESOURCE:Ljava/lang/String; = "publicsuffixes.gz"

.field private static final WILDCARD_LABEL:[B

.field private static final instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field private final listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private publicSuffixExceptionListBytes:[B

.field private publicSuffixListBytes:[B

.field private final readCompleteLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-array v0, v3, [B

    const/16 v1, 0x2a

    aput-byte v1, v0, v2

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    .line 40
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    .line 41
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "*"

    aput-object v1, v0, v2

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    .line 45
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static binarySearchBytes([B[[BI)Ljava/lang/String;
    .locals 21
    .param p0, "bytesToSearch"    # [B
    .param p1, "labels"    # [[B
    .param p2, "labelIndex"    # I

    .prologue
    .line 195
    const/4 v13, 0x0

    .line 196
    .local v13, "low":I
    move-object/from16 v0, p0

    array-length v10, v0

    .line 197
    .local v10, "high":I
    const/4 v14, 0x0

    .line 198
    .local v14, "match":Ljava/lang/String;
    :goto_0
    if-ge v13, v10, :cond_b

    .line 199
    add-int v19, v13, v10

    div-int/lit8 v15, v19, 0x2

    .line 202
    .local v15, "mid":I
    :goto_1
    const/16 v19, -0x1

    move/from16 v0, v19

    if-le v15, v0, :cond_0

    aget-byte v19, p0, v15

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 203
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 205
    :cond_0
    add-int/lit8 v15, v15, 0x1

    .line 208
    const/4 v8, 0x1

    .line 209
    .local v8, "end":I
    :goto_2
    add-int v19, v15, v8

    aget-byte v19, p0, v19

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 210
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 212
    :cond_1
    add-int v19, v15, v8

    sub-int v18, v19, v15

    .line 217
    .local v18, "publicSuffixLength":I
    move/from16 v7, p2

    .line 218
    .local v7, "currentLabelIndex":I
    const/4 v6, 0x0

    .line 219
    .local v6, "currentLabelByteIndex":I
    const/16 v16, 0x0

    .line 221
    .local v16, "publicSuffixByteIndex":I
    const/4 v9, 0x0

    .line 224
    .local v9, "expectDot":Z
    :cond_2
    :goto_3
    if-eqz v9, :cond_4

    .line 225
    const/16 v3, 0x2e

    .line 226
    .local v3, "byte0":I
    const/4 v9, 0x0

    .line 231
    :goto_4
    add-int v19, v15, v16

    aget-byte v19, p0, v19

    move/from16 v0, v19

    and-int/lit16 v4, v0, 0xff

    .line 233
    .local v4, "byte1":I
    sub-int v5, v3, v4

    .line 234
    .local v5, "compareResult":I
    if-eqz v5, :cond_5

    .line 253
    :cond_3
    if-gez v5, :cond_6

    .line 254
    add-int/lit8 v10, v15, -0x1

    goto :goto_0

    .line 228
    .end local v3    # "byte0":I
    .end local v4    # "byte1":I
    .end local v5    # "compareResult":I
    :cond_4
    aget-object v19, p1, v7

    aget-byte v19, v19, v6

    move/from16 v0, v19

    and-int/lit16 v3, v0, 0xff

    .restart local v3    # "byte0":I
    goto :goto_4

    .line 236
    .restart local v4    # "byte1":I
    .restart local v5    # "compareResult":I
    :cond_5
    add-int/lit8 v16, v16, 0x1

    .line 237
    add-int/lit8 v6, v6, 0x1

    .line 238
    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 240
    aget-object v19, p1, v7

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v0, v6, :cond_2

    .line 243
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-eq v7, v0, :cond_3

    .line 246
    add-int/lit8 v7, v7, 0x1

    .line 247
    const/4 v6, -0x1

    .line 248
    const/4 v9, 0x1

    goto :goto_3

    .line 255
    :cond_6
    if-lez v5, :cond_7

    .line 256
    add-int v19, v15, v8

    add-int/lit8 v13, v19, 0x1

    goto :goto_0

    .line 259
    :cond_7
    sub-int v17, v18, v16

    .line 260
    .local v17, "publicSuffixBytesLeft":I
    aget-object v19, p1, v7

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    sub-int v12, v19, v6

    .line 261
    .local v12, "labelBytesLeft":I
    add-int/lit8 v11, v7, 0x1

    .local v11, "i":I
    :goto_5
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_8

    .line 262
    aget-object v19, p1, v11

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v12, v12, v19

    .line 261
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 265
    :cond_8
    move/from16 v0, v17

    if-ge v12, v0, :cond_9

    .line 266
    add-int/lit8 v10, v15, -0x1

    goto/16 :goto_0

    .line 267
    :cond_9
    move/from16 v0, v17

    if-le v12, v0, :cond_a

    .line 268
    add-int v19, v15, v8

    add-int/lit8 v13, v19, 0x1

    goto/16 :goto_0

    .line 271
    :cond_a
    new-instance v14, Ljava/lang/String;

    .end local v14    # "match":Ljava/lang/String;
    sget-object v19, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v14, v0, v15, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 276
    .end local v3    # "byte0":I
    .end local v4    # "byte1":I
    .end local v5    # "compareResult":I
    .end local v6    # "currentLabelByteIndex":I
    .end local v7    # "currentLabelIndex":I
    .end local v8    # "end":I
    .end local v9    # "expectDot":Z
    .end local v11    # "i":I
    .end local v12    # "labelBytesLeft":I
    .end local v15    # "mid":I
    .end local v16    # "publicSuffixByteIndex":I
    .end local v17    # "publicSuffixBytesLeft":I
    .end local v18    # "publicSuffixLength":I
    .restart local v14    # "match":Ljava/lang/String;
    :cond_b
    return-object v14
.end method

.method private findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .param p1, "domainLabels"    # [Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    .line 109
    iget-object v10, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 110
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheListUninterruptibly()V

    .line 118
    :goto_0
    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v10, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-nez v10, :cond_1

    .line 120
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 123
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 113
    :cond_0
    :try_start_1
    iget-object v10, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v10}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v10

    goto :goto_0

    .line 123
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    array-length v10, p1

    new-array v0, v10, [[B

    .line 127
    .local v0, "domainLabelsUtf8Bytes":[[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v10, p1

    if-ge v4, v10, :cond_2

    .line 128
    aget-object v10, p1, v4

    sget-object v11, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    aput-object v10, v0, v4

    .line 127
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 133
    :cond_2
    const/4 v1, 0x0

    .line 134
    .local v1, "exactMatch":Ljava/lang/String;
    const/4 v4, 0x0

    :goto_2
    array-length v10, v0

    if-ge v4, v10, :cond_3

    .line 135
    iget-object v10, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v10, v0, v4}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, "rule":Ljava/lang/String;
    if-eqz v7, :cond_7

    .line 137
    move-object v1, v7

    .line 147
    .end local v7    # "rule":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    .line 148
    .local v8, "wildcardMatch":Ljava/lang/String;
    array-length v10, v0

    if-le v10, v12, :cond_4

    .line 149
    invoke-virtual {v0}, [[B->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[B

    .line 150
    .local v6, "labelsWithWildcard":[[B
    const/4 v5, 0x0

    .local v5, "labelIndex":I
    :goto_3
    array-length v10, v6

    add-int/lit8 v10, v10, -0x1

    if-ge v5, v10, :cond_4

    .line 151
    sget-object v10, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    aput-object v10, v6, v5

    .line 152
    iget-object v10, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v10, v6, v5}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v7

    .line 153
    .restart local v7    # "rule":Ljava/lang/String;
    if-eqz v7, :cond_8

    .line 154
    move-object v8, v7

    .line 161
    .end local v5    # "labelIndex":I
    .end local v6    # "labelsWithWildcard":[[B
    .end local v7    # "rule":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    .line 162
    .local v3, "exception":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 163
    const/4 v5, 0x0

    .restart local v5    # "labelIndex":I
    :goto_4
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    if-ge v5, v10, :cond_5

    .line 164
    iget-object v10, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    invoke-static {v10, v0, v5}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v7

    .line 166
    .restart local v7    # "rule":Ljava/lang/String;
    if-eqz v7, :cond_9

    .line 167
    move-object v3, v7

    .line 173
    .end local v5    # "labelIndex":I
    .end local v7    # "rule":Ljava/lang/String;
    :cond_5
    if-eqz v3, :cond_a

    .line 175
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 176
    const-string v10, "\\."

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 189
    :cond_6
    :goto_5
    return-object v2

    .line 134
    .end local v3    # "exception":Ljava/lang/String;
    .end local v8    # "wildcardMatch":Ljava/lang/String;
    .restart local v7    # "rule":Ljava/lang/String;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 150
    .restart local v5    # "labelIndex":I
    .restart local v6    # "labelsWithWildcard":[[B
    .restart local v8    # "wildcardMatch":Ljava/lang/String;
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 163
    .end local v6    # "labelsWithWildcard":[[B
    .restart local v3    # "exception":Ljava/lang/String;
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 177
    .end local v5    # "labelIndex":I
    .end local v7    # "rule":Ljava/lang/String;
    :cond_a
    if-nez v1, :cond_b

    if-nez v8, :cond_b

    .line 178
    sget-object v2, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    goto :goto_5

    .line 181
    :cond_b
    if-eqz v1, :cond_c

    .line 182
    const-string v10, "\\."

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "exactRuleLabels":[Ljava/lang/String;
    :goto_6
    if-eqz v8, :cond_d

    .line 186
    const-string v10, "\\."

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 189
    .local v9, "wildcardRuleLabels":[Ljava/lang/String;
    :goto_7
    array-length v10, v2

    array-length v11, v9

    if-gt v10, v11, :cond_6

    move-object v2, v9

    .line 191
    goto :goto_5

    .line 183
    .end local v2    # "exactRuleLabels":[Ljava/lang/String;
    .end local v9    # "wildcardRuleLabels":[Ljava/lang/String;
    :cond_c
    sget-object v2, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    goto :goto_6

    .line 187
    .restart local v2    # "exactRuleLabels":[Ljava/lang/String;
    :cond_d
    sget-object v9, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    goto :goto_7
.end method

.method public static get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-object v0
.end method

.method private readTheList()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    const-class v6, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    const-string v7, "publicsuffixes.gz"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 310
    .local v3, "resource":Ljava/io/InputStream;
    if-nez v3, :cond_0

    .line 331
    :goto_0
    return-void

    .line 312
    :cond_0
    new-instance v6, Lokio/GzipSource;

    invoke-static {v3}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v7

    invoke-direct {v6, v7}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    invoke-static {v6}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    .line 314
    .local v0, "bufferedSource":Lokio/BufferedSource;
    :try_start_0
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v4

    .line 315
    .local v4, "totalBytes":I
    new-array v2, v4, [B

    .line 316
    .local v2, "publicSuffixListBytes":[B
    invoke-interface {v0, v2}, Lokio/BufferedSource;->readFully([B)V

    .line 318
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v5

    .line 319
    .local v5, "totalExceptionBytes":I
    new-array v1, v5, [B

    .line 320
    .local v1, "publicSuffixExceptionListBytes":[B
    invoke-interface {v0, v1}, Lokio/BufferedSource;->readFully([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 325
    monitor-enter p0

    .line 326
    :try_start_1
    iput-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 327
    iput-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 328
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 330
    iget-object v6, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 322
    .end local v1    # "publicSuffixExceptionListBytes":[B
    .end local v2    # "publicSuffixListBytes":[B
    .end local v4    # "totalBytes":I
    .end local v5    # "totalExceptionBytes":I
    :catchall_0
    move-exception v6

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v6

    .line 328
    .restart local v1    # "publicSuffixExceptionListBytes":[B
    .restart local v2    # "publicSuffixListBytes":[B
    .restart local v4    # "totalBytes":I
    .restart local v5    # "totalExceptionBytes":I
    :catchall_1
    move-exception v6

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6
.end method

.method private readTheListUninterruptibly()V
    .locals 5

    .prologue
    .line 285
    const/4 v1, 0x0

    .line 289
    .local v1, "interrupted":Z
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheList()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    if-eqz v1, :cond_0

    .line 300
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 295
    :cond_0
    :goto_1
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/io/InterruptedIOException;
    const/4 v1, 0x1

    .line 296
    goto :goto_0

    .line 293
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    .line 294
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    const/4 v3, 0x5

    const-string v4, "Failed to read public suffix list"

    invoke-virtual {v2, v3, v4, v0}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    if-eqz v1, :cond_0

    .line 300
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 299
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 300
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    throw v2
.end method


# virtual methods
.method public getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x21

    const/4 v9, 0x0

    .line 78
    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "domain == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 81
    :cond_0
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, "unicodeDomain":Ljava/lang/String;
    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "domainLabels":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "rule":[Ljava/lang/String;
    array-length v7, v0

    array-length v8, v5

    if-ne v7, v8, :cond_1

    aget-object v7, v5, v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_1

    .line 86
    const/4 v7, 0x0

    .line 105
    :goto_0
    return-object v7

    .line 90
    :cond_1
    aget-object v7, v5, v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_2

    .line 92
    array-length v7, v0

    array-length v8, v5

    sub-int v2, v7, v8

    .line 98
    .local v2, "firstLabelOffset":I
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v1, "effectiveTldPlusOne":Ljava/lang/StringBuilder;
    const-string v7, "\\."

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "punycodeLabels":[Ljava/lang/String;
    move v3, v2

    .local v3, "i":I
    :goto_2
    array-length v7, v4

    if-ge v3, v7, :cond_3

    .line 101
    aget-object v7, v4, v3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 95
    .end local v1    # "effectiveTldPlusOne":Ljava/lang/StringBuilder;
    .end local v2    # "firstLabelOffset":I
    .end local v3    # "i":I
    .end local v4    # "punycodeLabels":[Ljava/lang/String;
    :cond_2
    array-length v7, v0

    array-length v8, v5

    add-int/lit8 v8, v8, 0x1

    sub-int v2, v7, v8

    .restart local v2    # "firstLabelOffset":I
    goto :goto_1

    .line 103
    .restart local v1    # "effectiveTldPlusOne":Ljava/lang/StringBuilder;
    .restart local v3    # "i":I
    .restart local v4    # "punycodeLabels":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method setListBytes([B[B)V
    .locals 2
    .param p1, "publicSuffixListBytes"    # [B
    .param p2, "publicSuffixExceptionListBytes"    # [B

    .prologue
    .line 335
    iput-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 336
    iput-object p2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 337
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 338
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 339
    return-void
.end method
