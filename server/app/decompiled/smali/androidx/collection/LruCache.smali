.class public Landroidx/collection/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


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


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 9

    .prologue
    .line 51
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 52
    move v2, v1

    if-gtz v2, :cond_0

    .line 53
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "maxSize <= 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/collection/LruCache;->maxSize:I

    .line 56
    move-object v2, v0

    new-instance v3, Ljava/util/LinkedHashMap;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v3, v2, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    .line 57
    return-void
.end method

.method private safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    move v3, v4

    .line 260
    move v4, v3

    if-gez v4, :cond_0

    .line 261
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Negative size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 263
    :cond_0
    move v4, v3

    move v0, v4

    return v0
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public final declared-synchronized createCount()I
    .locals 3

    .prologue
    .line 322
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget v1, v1, Landroidx/collection/LruCache;->createCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 236
    return-void
.end method

.method public final evictAll()V
    .locals 3

    .prologue
    .line 281
    move-object v0, p0

    move-object v1, v0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroidx/collection/LruCache;->trimToSize(I)V

    .line 282
    return-void
.end method

.method public final declared-synchronized evictionCount()I
    .locals 3

    .prologue
    .line 336
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget v1, v1, Landroidx/collection/LruCache;->evictionCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    if-nez v6, :cond_0

    .line 84
    new-instance v6, Ljava/lang/NullPointerException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "key == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 88
    :cond_0
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v3, v7

    monitor-enter v6

    .line 89
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    .line 90
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 91
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroidx/collection/LruCache;->hitCount:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroidx/collection/LruCache;->hitCount:I

    .line 92
    move-object v6, v2

    move-object v7, v3

    monitor-exit v7

    move-object v0, v6

    .line 126
    :goto_0
    return-object v0

    .line 94
    :cond_1
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroidx/collection/LruCache;->missCount:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroidx/collection/LruCache;->missCount:I

    .line 95
    move-object v6, v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroidx/collection/LruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 105
    move-object v6, v3

    if-nez v6, :cond_2

    .line 106
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v6

    move-object v4, v6

    move-object v6, v3

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v4

    throw v6

    .line 109
    :cond_2
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v4, v7

    monitor-enter v6

    .line 110
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    :try_start_2
    iget v7, v7, Landroidx/collection/LruCache;->createCount:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroidx/collection/LruCache;->createCount:I

    .line 111
    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    .line 113
    move-object v6, v2

    if-eqz v6, :cond_3

    .line 115
    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 119
    :goto_1
    move-object v6, v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 121
    move-object v6, v2

    if-eqz v6, :cond_4

    .line 122
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v1

    move-object v9, v3

    move-object v10, v2

    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/collection/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    move-object v6, v2

    move-object v0, v6

    goto :goto_0

    .line 117
    :cond_3
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    :try_start_3
    iget v7, v7, Landroidx/collection/LruCache;->size:I

    move-object v8, v0

    move-object v9, v1

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroidx/collection/LruCache;->size:I

    goto :goto_1

    .line 119
    :catchall_1
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v6, v5

    throw v6

    .line 125
    :cond_4
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/collection/LruCache;->maxSize:I

    invoke-virtual {v6, v7}, Landroidx/collection/LruCache;->trimToSize(I)V

    .line 126
    move-object v6, v3

    move-object v0, v6

    goto :goto_0
.end method

.method public final declared-synchronized hitCount()I
    .locals 3

    .prologue
    .line 307
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget v1, v1, Landroidx/collection/LruCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final declared-synchronized maxSize()I
    .locals 3

    .prologue
    .line 299
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget v1, v1, Landroidx/collection/LruCache;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final declared-synchronized missCount()I
    .locals 3

    .prologue
    .line 315
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget v1, v1, Landroidx/collection/LruCache;->missCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v2

    if-nez v6, :cond_1

    .line 139
    :cond_0
    new-instance v6, Ljava/lang/NullPointerException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "key == null || value == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 143
    :cond_1
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v4, v7

    monitor-enter v6

    .line 144
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    :try_start_0
    iget v7, v7, Landroidx/collection/LruCache;->putCount:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroidx/collection/LruCache;->putCount:I

    .line 145
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroidx/collection/LruCache;->size:I

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroidx/collection/LruCache;->size:I

    .line 146
    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 147
    move-object v6, v3

    if-eqz v6, :cond_2

    .line 148
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroidx/collection/LruCache;->size:I

    move-object v8, v0

    move-object v9, v1

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v6, Landroidx/collection/LruCache;->size:I

    .line 150
    :cond_2
    move-object v6, v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    move-object v6, v3

    if-eqz v6, :cond_3

    .line 153
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v1

    move-object v9, v3

    move-object v10, v2

    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/collection/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    :cond_3
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/collection/LruCache;->maxSize:I

    invoke-virtual {v6, v7}, Landroidx/collection/LruCache;->trimToSize(I)V

    .line 157
    move-object v6, v3

    move-object v0, v6

    return-object v0

    .line 150
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method public final declared-synchronized putCount()I
    .locals 3

    .prologue
    .line 329
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget v1, v1, Landroidx/collection/LruCache;->putCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 200
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    if-nez v5, :cond_0

    .line 201
    new-instance v5, Ljava/lang/NullPointerException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "key == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 205
    :cond_0
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v3, v6

    monitor-enter v5

    .line 206
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 207
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 208
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroidx/collection/LruCache;->size:I

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v5, Landroidx/collection/LruCache;->size:I

    .line 210
    :cond_1
    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    move-object v5, v2

    if-eqz v5, :cond_2

    .line 213
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/collection/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    :cond_2
    move-object v5, v2

    move-object v0, v5

    return-object v0

    .line 210
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public resize(I)V
    .locals 8

    .prologue
    .line 65
    move-object v0, p0

    move v1, p1

    move v4, v1

    if-gtz v4, :cond_0

    .line 66
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "maxSize <= 0"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 69
    :cond_0
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 70
    move-object v4, v0

    move v5, v1

    :try_start_0
    iput v5, v4, Landroidx/collection/LruCache;->maxSize:I

    .line 71
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/collection/LruCache;->trimToSize(I)V

    .line 73
    return-void

    .line 71
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public final declared-synchronized size()I
    .locals 3

    .prologue
    .line 290
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget v1, v1, Landroidx/collection/LruCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 274
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x1

    move v0, v3

    return v0
.end method

.method public final declared-synchronized snapshot()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 344
    move-object v0, p0

    move-object v4, p0

    monitor-enter v4

    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    monitor-exit v4

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 348
    move-object v0, p0

    move-object v9, p0

    monitor-enter v9

    move-object v3, v0

    :try_start_0
    iget v3, v3, Landroidx/collection/LruCache;->hitCount:I

    move-object v4, v0

    iget v4, v4, Landroidx/collection/LruCache;->missCount:I

    add-int/2addr v3, v4

    move v1, v3

    .line 349
    move v3, v1

    if-eqz v3, :cond_0

    const/16 v3, 0x64

    move-object v4, v0

    iget v4, v4, Landroidx/collection/LruCache;->hitCount:I

    mul-int/2addr v3, v4

    move v4, v1

    div-int/2addr v3, v4

    :goto_0
    move v2, v3

    .line 350
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroidx/collection/LruCache;->maxSize:I

    .line 351
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x1

    move-object v8, v0

    iget v8, v8, Landroidx/collection/LruCache;->hitCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x2

    move-object v8, v0

    iget v8, v8, Landroidx/collection/LruCache;->missCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x3

    move v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 350
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    move-object v0, v3

    monitor-exit v9

    return-object v0

    .line 349
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public trimToSize(I)V
    .locals 13

    .prologue
    .line 171
    move-object v0, p0

    move v1, p1

    :goto_0
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v4, v8

    monitor-enter v7

    .line 172
    move-object v7, v0

    :try_start_0
    iget v7, v7, Landroidx/collection/LruCache;->size:I

    if-ltz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v0

    iget v7, v7, Landroidx/collection/LruCache;->size:I

    if-eqz v7, :cond_1

    .line 173
    :cond_0
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 187
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v6

    throw v7

    .line 177
    :cond_1
    move-object v7, v0

    :try_start_1
    iget v7, v7, Landroidx/collection/LruCache;->size:I

    move v8, v1

    if-le v7, v8, :cond_2

    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 178
    :cond_2
    move-object v7, v4

    monitor-exit v7

    .line 191
    return-void

    .line 181
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    move-object v5, v7

    .line 182
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    .line 183
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 184
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 185
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Landroidx/collection/LruCache;->size:I

    move-object v9, v0

    move-object v10, v2

    move-object v11, v3

    invoke-direct {v9, v10, v11}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v7, Landroidx/collection/LruCache;->size:I

    .line 186
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Landroidx/collection/LruCache;->evictionCount:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroidx/collection/LruCache;->evictionCount:I

    .line 187
    move-object v7, v4

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    move-object v7, v0

    const/4 v8, 0x1

    move-object v9, v2

    move-object v10, v3

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/collection/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 190
    goto/16 :goto_0
.end method
