.class final Landroidx/multidex/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/multidex/ZipUtil$CentralDirectory;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x4000

.field private static final ENDHDR:I = 0x16

.field private static final ENDSIG:I = 0x6054b50


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method static computeCrcOfCentralDir(Ljava/io/RandomAccessFile;Landroidx/multidex/ZipUtil$CentralDirectory;)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, p1

    new-instance v7, Ljava/util/zip/CRC32;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/util/zip/CRC32;-><init>()V

    move-object v2, v7

    .line 109
    move-object v7, v1

    iget-wide v7, v7, Landroidx/multidex/ZipUtil$CentralDirectory;->size:J

    move-wide v3, v7

    .line 110
    move-object v7, v0

    move-object v8, v1

    iget-wide v8, v8, Landroidx/multidex/ZipUtil$CentralDirectory;->offset:J

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 111
    const-wide/16 v7, 0x4000

    move-wide v9, v3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    move v5, v7

    .line 112
    const/16 v7, 0x4000

    new-array v7, v7, [B

    move-object v6, v7

    .line 113
    move-object v7, v0

    move-object v8, v6

    const/4 v9, 0x0

    move v10, v5

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v7

    move v5, v7

    .line 114
    :goto_0
    move v7, v5

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 115
    move-object v7, v2

    move-object v8, v6

    const/4 v9, 0x0

    move v10, v5

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/zip/CRC32;->update([BII)V

    .line 116
    move-wide v7, v3

    move v9, v5

    int-to-long v9, v9

    sub-long/2addr v7, v9

    move-wide v3, v7

    .line 117
    move-wide v7, v3

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    .line 123
    :cond_0
    move-object v7, v2

    invoke-virtual {v7}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    move-wide v0, v7

    return-wide v0

    .line 120
    :cond_1
    const-wide/16 v7, 0x4000

    move-wide v9, v3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    move v5, v7

    .line 121
    move-object v7, v0

    move-object v8, v6

    const/4 v9, 0x0

    move v10, v5

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v7

    move v5, v7

    goto :goto_0
.end method

.method static findCentralDirectory(Ljava/io/RandomAccessFile;)Landroidx/multidex/ZipUtil$CentralDirectory;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x16

    sub-long/2addr v7, v9

    move-wide v1, v7

    .line 69
    move-wide v7, v1

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    .line 70
    new-instance v7, Ljava/util/zip/ZipException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File too short to be a zip file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 73
    :cond_0
    move-wide v7, v1

    const-wide/32 v9, 0x10000

    sub-long/2addr v7, v9

    move-wide v3, v7

    .line 74
    move-wide v7, v3

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gez v7, :cond_1

    .line 75
    const-wide/16 v7, 0x0

    move-wide v3, v7

    .line 78
    :cond_1
    const v7, 0x6054b50

    invoke-static {v7}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v7

    move v5, v7

    .line 80
    :cond_2
    move-object v7, v0

    move-wide v8, v1

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 81
    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    move v8, v5

    if-ne v7, v8, :cond_3

    .line 95
    move-object v7, v0

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v7

    .line 96
    move-object v7, v0

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v7

    .line 97
    move-object v7, v0

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v7

    .line 98
    move-object v7, v0

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v7

    .line 99
    new-instance v7, Landroidx/multidex/ZipUtil$CentralDirectory;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Landroidx/multidex/ZipUtil$CentralDirectory;-><init>()V

    move-object v6, v7

    .line 100
    move-object v7, v6

    move-object v8, v0

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    iput-wide v8, v7, Landroidx/multidex/ZipUtil$CentralDirectory;->size:J

    .line 101
    move-object v7, v6

    move-object v8, v0

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    iput-wide v8, v7, Landroidx/multidex/ZipUtil$CentralDirectory;->offset:J

    .line 102
    move-object v7, v6

    move-object v0, v7

    return-object v0

    .line 85
    :cond_3
    move-wide v7, v1

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    move-wide v1, v7

    .line 86
    move-wide v7, v1

    move-wide v9, v3

    cmp-long v7, v7, v9

    if-gez v7, :cond_2

    .line 87
    new-instance v7, Ljava/util/zip/ZipException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "End Of Central Directory signature not found"

    invoke-direct {v8, v9}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method static getZipCrc(Ljava/io/File;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    new-instance v6, Ljava/io/RandomAccessFile;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    const-string v9, "r"

    invoke-direct {v7, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v6

    .line 57
    move-object v6, v1

    :try_start_0
    invoke-static {v6}, Landroidx/multidex/ZipUtil;->findCentralDirectory(Ljava/io/RandomAccessFile;)Landroidx/multidex/ZipUtil$CentralDirectory;

    move-result-object v6

    move-object v2, v6

    .line 59
    move-object v6, v1

    move-object v7, v2

    invoke-static {v6, v7}, Landroidx/multidex/ZipUtil;->computeCrcOfCentralDir(Ljava/io/RandomAccessFile;Landroidx/multidex/ZipUtil$CentralDirectory;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    move-wide v3, v6

    .line 61
    move-object v6, v1

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    move-wide v6, v3

    move-wide v0, v6

    return-wide v0

    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v1

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    move-object v6, v5

    throw v6
.end method
