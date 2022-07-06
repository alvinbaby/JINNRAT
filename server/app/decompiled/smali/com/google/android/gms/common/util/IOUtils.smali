.class public final Lcom/google/android/gms/common/util/IOUtils;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .param p0    # Landroid/os/ParcelFileDescriptor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 2
    .param p0    # Ljava/io/Closeable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 2
    :try_start_0
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .param p0    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/OutputStream;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/16 v5, 0x400

    .line 1
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/common/util/IOUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;ZI)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;ZI)J
    .locals 14
    .param p0    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/OutputStream;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move v10, v4

    .line 2
    new-array v10, v10, [B

    move-object v4, v10

    const-wide/16 v10, 0x0

    move-wide v5, v10

    :goto_0
    move-object v10, v1

    move-object v11, v4

    const/4 v12, 0x0

    move-object v13, v4

    :try_start_0
    array-length v13, v13

    .line 3
    invoke-virtual {v10, v11, v12, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    move v7, v10

    move v10, v7

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    move-wide v10, v5

    move v12, v7

    int-to-long v12, v12

    add-long/2addr v10, v12

    move-wide v8, v10

    .line 4
    move-object v10, v2

    move-object v11, v4

    const/4 v12, 0x0

    move v13, v7

    invoke-virtual {v10, v11, v12, v13}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v10, v8

    move-wide v5, v10

    goto :goto_0

    :cond_0
    move v10, v3

    if-eqz v10, :cond_1

    move-object v10, v1

    .line 5
    invoke-static {v10}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v10, v2

    .line 6
    invoke-static {v10}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1
    move-wide v10, v5

    move-wide v1, v10

    return-wide v1

    :catchall_0
    move-exception v10

    move-object v4, v10

    move v10, v3

    if-nez v10, :cond_2

    :goto_1
    move-object v10, v4

    .line 7
    throw v10

    :cond_2
    move-object v10, v1

    .line 5
    invoke-static {v10}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v10, v2

    .line 6
    invoke-static {v10}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1
.end method

.method public static isGzipByteBuffer([B)Z
    .locals 4
    .param p0    # [B
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    move-object v1, v0

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/lit16 v1, v1, 0xff

    move-object v2, v0

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x8

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const v2, 0x8b1f

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static readInputStreamFully(Ljava/io/InputStream;)[B
    .locals 3
    .param p0    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    .line 1
    invoke-static {v1, v2}, Lcom/google/android/gms/common/util/IOUtils;->readInputStreamFully(Ljava/io/InputStream;Z)[B

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static readInputStreamFully(Ljava/io/InputStream;Z)[B
    .locals 8
    .param p0    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2
    move-object v1, p0

    move v2, p1

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    move-object v3, v4

    move-object v4, v3

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v4, v1

    move-object v5, v3

    move v6, v2

    const/16 v7, 0x400

    .line 3
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/util/IOUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;ZI)J

    move-result-wide v4

    move-object v4, v3

    .line 4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object v1, v4

    return-object v1
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 8
    .param p0    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1
    move-object v0, p0

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    move-object v1, v4

    move-object v4, v1

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v4, v0

    .line 2
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v1

    .line 3
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/16 v4, 0x1000

    new-array v4, v4, [B

    move-object v2, v4

    :goto_0
    move-object v4, v0

    move-object v5, v2

    .line 4
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v3, v4

    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    move-object v4, v1

    .line 6
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object v0, v4

    return-object v0

    :cond_0
    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    move v7, v3

    .line 5
    invoke-virtual {v4, v5, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method
