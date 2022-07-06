.class public Lcom/google/firebase/storage/FileDownloadTask;
.super Lcom/google/firebase/storage/StorageTask;
.source "com.google.firebase:firebase-storage@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/storage/StorageTask",
        "<",
        "Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;",
        ">;"
    }
.end annotation


# static fields
.field static final PREFERRED_CHUNK_SIZE:I = 0x40000

.field private static final TAG:Ljava/lang/String; = "FileDownloadTask"


# instance fields
.field private mBytesDownloaded:J

.field private final mDestinationFile:Landroid/net/Uri;

.field private mETagVerification:Ljava/lang/String;

.field private volatile mException:Ljava/lang/Exception;

.field private mResultCode:I

.field private mResumeOffset:J

.field private mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

.field private mStorageRef:Lcom/google/firebase/storage/StorageReference;

.field private mTotalBytes:J


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageReference;Landroid/net/Uri;)V
    .locals 6
    .param p1, "storageRef"    # Lcom/google/firebase/storage/StorageReference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "destinationFile"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;-><init>()V

    .line 40
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/firebase/storage/FileDownloadTask;->mTotalBytes:J

    .line 41
    iput-object v1, p0, Lcom/google/firebase/storage/FileDownloadTask;->mETagVerification:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    .line 44
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    .line 48
    iput-object p1, p0, Lcom/google/firebase/storage/FileDownloadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 49
    iput-object p2, p0, Lcom/google/firebase/storage/FileDownloadTask;->mDestinationFile:Landroid/net/Uri;

    .line 51
    iget-object v1, p0, Lcom/google/firebase/storage/FileDownloadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    .line 52
    .local v0, "storage":Lcom/google/firebase/storage/FirebaseStorage;
    new-instance v1, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 54
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 55
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getAuthProvider()Lcom/google/firebase/auth/internal/InternalAuthProvider;

    move-result-object v3

    .line 56
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxDownloadRetryTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;-><init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/InternalAuthProvider;J)V

    iput-object v1, p0, Lcom/google/firebase/storage/FileDownloadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 57
    return-void
.end method

.method private fillBuffer(Ljava/io/InputStream;[B)I
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "data"    # [B

    .prologue
    const/4 v4, -0x1

    .line 102
    const/4 v3, 0x0

    .line 104
    .local v3, "readData":Z
    const/4 v2, 0x0

    .line 108
    .local v2, "offset":I
    :goto_0
    :try_start_0
    array-length v5, p2

    if-eq v2, v5, :cond_0

    array-length v5, p2

    sub-int/2addr v5, v2

    .line 109
    invoke-virtual {p1, p2, v2, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, "count":I
    if-eq v0, v4, :cond_0

    .line 110
    const/4 v3, 0x1

    .line 111
    add-int/2addr v2, v0

    goto :goto_0

    .line 113
    .end local v0    # "count":I
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/io/IOException;
    iput-object v1, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    .line 117
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    if-eqz v3, :cond_1

    .end local v2    # "offset":I
    :goto_1
    return v2

    .restart local v2    # "offset":I
    :cond_1
    move v2, v4

    goto :goto_1
.end method

.method private isValidHttpResponseCode(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 269
    const/16 v0, 0x134

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_1

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processResponse(Lcom/google/firebase/storage/network/NetworkRequest;)Z
    .locals 12
    .param p1, "request"    # Lcom/google/firebase/storage/network/NetworkRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    .line 125
    const/4 v6, 0x1

    .line 126
    .local v6, "success":Z
    invoke-virtual {p1}, Lcom/google/firebase/storage/network/NetworkRequest;->getStream()Ljava/io/InputStream;

    move-result-object v5

    .line 129
    .local v5, "stream":Ljava/io/InputStream;
    if-eqz v5, :cond_6

    .line 130
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->mDestinationFile:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v4, "outputFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 132
    iget-wide v8, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 133
    const-string v7, "FileDownloadTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The file downloading to has been deleted:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "expected a file to resume from."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 136
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v1

    .line 137
    .local v1, "created":Z
    if-nez v1, :cond_1

    .line 138
    const-string v7, "FileDownloadTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unable to create file:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v1    # "created":Z
    :cond_1
    iget-wide v8, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_4

    .line 142
    const-string v7, "FileDownloadTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resuming download file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 143
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 142
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v3, v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 151
    .local v3, "output":Ljava/io/OutputStream;
    :goto_0
    const/high16 v7, 0x40000

    :try_start_0
    new-array v2, v7, [B

    .line 154
    .local v2, "data":[B
    :cond_2
    :goto_1
    if-eqz v6, :cond_5

    invoke-direct {p0, v5, v2}, Lcom/google/firebase/storage/FileDownloadTask;->fillBuffer(Ljava/io/InputStream;[B)I

    move-result v0

    .local v0, "count":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_5

    .line 155
    const/4 v7, 0x0

    invoke-virtual {v3, v2, v7, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 156
    iget-wide v8, p0, Lcom/google/firebase/storage/FileDownloadTask;->mBytesDownloaded:J

    int-to-long v10, v0

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/google/firebase/storage/FileDownloadTask;->mBytesDownloaded:J

    .line 158
    iget-object v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    if-eqz v7, :cond_3

    .line 159
    const-string v7, "FileDownloadTask"

    const-string v8, "Exception occurred during file download. Retrying."

    iget-object v9, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    invoke-static {v7, v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    .line 161
    const/4 v6, 0x0

    .line 164
    :cond_3
    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/google/firebase/storage/FileDownloadTask;->tryChangeState(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    .line 165
    const/4 v6, 0x0

    goto :goto_1

    .line 147
    .end local v0    # "count":I
    .end local v2    # "data":[B
    .end local v3    # "output":Ljava/io/OutputStream;
    :cond_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .restart local v3    # "output":Ljava/io/OutputStream;
    goto :goto_0

    .line 169
    .restart local v2    # "data":[B
    :cond_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 170
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 171
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 178
    .end local v2    # "data":[B
    .end local v3    # "output":Ljava/io/OutputStream;
    .end local v4    # "outputFile":Ljava/io/File;
    :goto_2
    return v6

    .line 169
    .restart local v3    # "output":Ljava/io/OutputStream;
    .restart local v4    # "outputFile":Ljava/io/File;
    :catchall_0
    move-exception v7

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 170
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 171
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v7

    .line 174
    .end local v3    # "output":Ljava/io/OutputStream;
    .end local v4    # "outputFile":Ljava/io/File;
    :cond_6
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Unable to open Firebase Storage stream."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    .line 175
    const/4 v6, 0x0

    goto :goto_2
.end method


# virtual methods
.method getDownloadedSizeInBytes()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->mBytesDownloaded:J

    return-wide v0
.end method

.method getStorage()Lcom/google/firebase/storage/StorageReference;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    return-object v0
.end method

.method getTotalBytes()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->mTotalBytes:J

    return-wide v0
.end method

.method protected onCanceled()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v0}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->cancel()V

    .line 265
    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_CANCELED:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageException;->fromErrorStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/storage/StorageException;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    .line 266
    return-void
.end method

.method run()V
    .locals 10

    .prologue
    .line 185
    iget-object v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    if-eqz v5, :cond_1

    .line 186
    const/16 v5, 0x40

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/google/firebase/storage/FileDownloadTask;->tryChangeState(IZ)Z

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/google/firebase/storage/FileDownloadTask;->tryChangeState(IZ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 195
    :cond_2
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->mBytesDownloaded:J

    .line 196
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    .line 197
    iget-object v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v5}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->reset()V

    .line 198
    new-instance v3, Lcom/google/firebase/storage/network/GetNetworkRequest;

    iget-object v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 199
    invoke-virtual {v5}, Lcom/google/firebase/storage/StorageReference;->getStorageUri()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v6}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v6

    iget-wide v8, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    invoke-direct {v3, v5, v6, v8, v9}, Lcom/google/firebase/storage/network/GetNetworkRequest;-><init>(Landroid/net/Uri;Lcom/google/firebase/FirebaseApp;J)V

    .line 201
    .local v3, "request":Lcom/google/firebase/storage/network/NetworkRequest;
    iget-object v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->sendWithExponentialBackoff(Lcom/google/firebase/storage/network/NetworkRequest;Z)V

    .line 202
    invoke-virtual {v3}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultCode()I

    move-result v5

    iput v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResultCode:I

    .line 203
    invoke-virtual {v3}, Lcom/google/firebase/storage/network/NetworkRequest;->getException()Ljava/lang/Exception;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/google/firebase/storage/network/NetworkRequest;->getException()Ljava/lang/Exception;

    move-result-object v5

    :goto_1
    iput-object v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    .line 205
    iget v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResultCode:I

    .line 206
    invoke-direct {p0, v5}, Lcom/google/firebase/storage/FileDownloadTask;->isValidHttpResponseCode(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    if-nez v5, :cond_4

    .line 208
    invoke-virtual {p0}, Lcom/google/firebase/storage/FileDownloadTask;->getInternalState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    const/4 v4, 0x1

    .line 210
    .local v4, "success":Z
    :goto_2
    if-eqz v4, :cond_6

    .line 211
    invoke-virtual {v3}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultingContentLength()I

    move-result v5

    int-to-long v6, v5

    iput-wide v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->mTotalBytes:J

    .line 212
    const-string v5, "ETag"

    invoke-virtual {v3, v5}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "newEtag":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->mETagVerification:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->mETagVerification:Ljava/lang/String;

    .line 215
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 216
    const-string v5, "FileDownloadTask"

    const-string v6, "The file at the server has changed.  Restarting from the beginning."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    .line 218
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->mETagVerification:Ljava/lang/String;

    .line 219
    invoke-virtual {v3}, Lcom/google/firebase/storage/network/NetworkRequest;->performRequestEnd()V

    .line 220
    invoke-virtual {p0}, Lcom/google/firebase/storage/FileDownloadTask;->schedule()V

    goto/16 :goto_0

    .line 203
    .end local v1    # "newEtag":Ljava/lang/String;
    .end local v4    # "success":Z
    :cond_3
    iget-object v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    goto :goto_1

    .line 208
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 224
    .restart local v1    # "newEtag":Ljava/lang/String;
    .restart local v4    # "success":Z
    :cond_5
    iput-object v1, p0, Lcom/google/firebase/storage/FileDownloadTask;->mETagVerification:Ljava/lang/String;

    .line 227
    :try_start_0
    invoke-direct {p0, v3}, Lcom/google/firebase/storage/FileDownloadTask;->processResponse(Lcom/google/firebase/storage/network/NetworkRequest;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 234
    .end local v1    # "newEtag":Ljava/lang/String;
    :cond_6
    :goto_3
    invoke-virtual {v3}, Lcom/google/firebase/storage/network/NetworkRequest;->performRequestEnd()V

    .line 235
    if-eqz v4, :cond_7

    iget-object v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    if-nez v5, :cond_7

    invoke-virtual {p0}, Lcom/google/firebase/storage/FileDownloadTask;->getInternalState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_7

    const/4 v4, 0x1

    .line 237
    :goto_4
    if-eqz v4, :cond_8

    .line 238
    const/16 v5, 0x80

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/google/firebase/storage/FileDownloadTask;->tryChangeState(IZ)Z

    goto/16 :goto_0

    .line 228
    .restart local v1    # "newEtag":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "FileDownloadTask"

    const-string v6, "Exception occurred during file write.  Aborting."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    iput-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    goto :goto_3

    .line 235
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "newEtag":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    goto :goto_4

    .line 241
    :cond_8
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->mDestinationFile:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v2, "outputFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 243
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    .line 247
    :goto_5
    invoke-virtual {p0}, Lcom/google/firebase/storage/FileDownloadTask;->getInternalState()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_a

    .line 248
    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/google/firebase/storage/FileDownloadTask;->tryChangeState(IZ)Z

    goto/16 :goto_0

    .line 245
    :cond_9
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    goto :goto_5

    .line 250
    :cond_a
    invoke-virtual {p0}, Lcom/google/firebase/storage/FileDownloadTask;->getInternalState()I

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_b

    .line 251
    const/16 v5, 0x100

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/google/firebase/storage/FileDownloadTask;->tryChangeState(IZ)Z

    move-result v5

    if-nez v5, :cond_0

    .line 252
    const-string v5, "FileDownloadTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to change download task to final state from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/firebase/storage/FileDownloadTask;->getInternalState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 257
    :cond_b
    iget-wide v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->mBytesDownloaded:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_2

    .line 259
    const/16 v5, 0x40

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/google/firebase/storage/FileDownloadTask;->tryChangeState(IZ)Z

    goto/16 :goto_0
.end method

.method protected schedule()V
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/storage/FileDownloadTask;->getRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageTaskScheduler;->scheduleDownload(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method

.method snapStateImpl()Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;

    iget-object v1, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    iget v2, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResultCode:I

    .line 90
    invoke-static {v1, v2}, Lcom/google/firebase/storage/StorageException;->fromExceptionAndHttpCode(Ljava/lang/Throwable;I)Lcom/google/firebase/storage/StorageException;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/firebase/storage/FileDownloadTask;->mBytesDownloaded:J

    iget-wide v4, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    add-long/2addr v2, v4

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;-><init>(Lcom/google/firebase/storage/FileDownloadTask;Ljava/lang/Exception;J)V

    .line 89
    return-object v0
.end method

.method bridge synthetic snapStateImpl()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/firebase/storage/FileDownloadTask;->snapStateImpl()Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method
