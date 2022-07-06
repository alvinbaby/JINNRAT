.class public Lcom/google/firebase/storage/UploadTask;
.super Lcom/google/firebase/storage/StorageTask;
.source "com.google.firebase:firebase-storage@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/UploadTask$TaskSnapshot;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/storage/StorageTask",
        "<",
        "Lcom/google/firebase/storage/UploadTask$TaskSnapshot;",
        ">;"
    }
.end annotation


# static fields
.field private static final APPLICATION_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field private static final MAXIMUM_CHUNK_SIZE:I = 0x2000000

.field static final PREFERRED_CHUNK_SIZE:I = 0x40000
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final RESUMABLE_FINAL_STATUS:Ljava/lang/String; = "final"

.field private static final TAG:Ljava/lang/String; = "UploadTask"

.field private static final X_GOOG_UPLOAD_URL:Ljava/lang/String; = "X-Goog-Upload-URL"


# instance fields
.field private final mAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

.field private mCurrentChunkSize:I

.field private volatile mException:Ljava/lang/Exception;

.field private mIsStreamOwned:Z

.field private volatile mMetadata:Lcom/google/firebase/storage/StorageMetadata;

.field private volatile mResultCode:I

.field private mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

.field private volatile mServerException:Ljava/lang/Exception;

.field private volatile mServerStatus:Ljava/lang/String;

.field private final mStorageRef:Lcom/google/firebase/storage/StorageReference;

.field private final mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

.field private final mTotalByteCount:J

.field private volatile mUploadUri:Landroid/net/Uri;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 18
    .param p1, "targetRef"    # Lcom/google/firebase/storage/StorageReference;
    .param p2, "metadata"    # Lcom/google/firebase/storage/StorageMetadata;
    .param p3, "file"    # Landroid/net/Uri;
    .param p4, "existingUploadUri"    # Landroid/net/Uri;

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/storage/StorageTask;-><init>()V

    .line 62
    new-instance v13, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v14, 0x0

    invoke-direct {v13, v14, v15}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/firebase/storage/UploadTask;->mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

    .line 64
    const/high16 v13, 0x40000

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    .line 68
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    .line 69
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 70
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    .line 71
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    .line 98
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v9

    .line 103
    .local v9, "storage":Lcom/google/firebase/storage/FirebaseStorage;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 104
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    .line 105
    invoke-virtual {v9}, Lcom/google/firebase/storage/FirebaseStorage;->getAuthProvider()Lcom/google/firebase/auth/internal/InternalAuthProvider;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/firebase/storage/UploadTask;->mAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    .line 106
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    .line 107
    const/4 v5, 0x0

    .line 108
    .local v5, "inputStream":Ljava/io/InputStream;
    new-instance v13, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 110
    invoke-virtual {v14}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/firebase/storage/UploadTask;->mAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    .line 112
    invoke-virtual {v9}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxUploadRetryTimeMillis()J

    move-result-wide v16

    invoke-direct/range {v13 .. v17}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;-><init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/InternalAuthProvider;J)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/firebase/storage/UploadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 113
    const-wide/16 v10, -0x1

    .line 115
    .local v10, "size":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 116
    invoke-virtual {v13}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    .line 118
    .local v8, "resolver":Landroid/content/ContentResolver;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    const-string v14, "r"

    invoke-virtual {v8, v13, v14}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 119
    .local v4, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v4, :cond_0

    .line 120
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v10

    .line 121
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 131
    .end local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v13}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 132
    if-eqz v5, :cond_2

    .line 133
    const-wide/16 v14, -0x1

    cmp-long v13, v10, v14

    if-nez v13, :cond_1

    .line 136
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v12

    .line 137
    .local v12, "streamSize":I
    if-ltz v12, :cond_1

    .line 138
    int-to-long v10, v12

    .line 144
    .end local v12    # "streamSize":I
    :cond_1
    :goto_1
    :try_start_4
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .local v6, "inputStream":Ljava/io/InputStream;
    move-object v5, v6

    .line 150
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/firebase/storage/UploadTask;->mTotalByteCount:J

    .line 151
    new-instance v13, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    const/high16 v14, 0x40000

    invoke-direct {v13, v5, v14}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;-><init>(Ljava/io/InputStream;I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    .line 152
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/google/firebase/storage/UploadTask;->mIsStreamOwned:Z

    .line 153
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    .line 154
    return-void

    .line 123
    .restart local v8    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v7

    .line 125
    .local v7, "npe":Ljava/lang/NullPointerException;
    :try_start_5
    const-string v13, "UploadTask"

    const-string v14, "NullPointerException during file size calculation."

    invoke-static {v13, v14, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    const-wide/16 v10, -0x1

    .line 129
    goto :goto_0

    .line 127
    .end local v7    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 128
    .local v2, "checkSizeError":Ljava/io/IOException;
    const-string v13, "UploadTask"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "could not retrieve file size for upload "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 146
    .end local v2    # "checkSizeError":Ljava/io/IOException;
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    :catch_2
    move-exception v3

    .line 147
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v13, "UploadTask"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "could not locate file for uploading:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    goto :goto_2

    .line 140
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v8    # "resolver":Landroid/content/ContentResolver;
    :catch_3
    move-exception v13

    goto :goto_1
.end method

.method constructor <init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;Ljava/io/InputStream;)V
    .locals 7
    .param p1, "targetRef"    # Lcom/google/firebase/storage/StorageReference;
    .param p2, "metadata"    # Lcom/google/firebase/storage/StorageMetadata;
    .param p3, "stream"    # Ljava/io/InputStream;

    .prologue
    const/high16 v6, 0x40000

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 156
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;-><init>()V

    .line 62
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

    .line 64
    iput v6, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    .line 68
    iput-object v4, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    .line 69
    iput-object v4, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 70
    iput-object v4, p0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    .line 71
    iput v5, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    .line 157
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    .line 162
    .local v0, "storage":Lcom/google/firebase/storage/FirebaseStorage;
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/firebase/storage/UploadTask;->mTotalByteCount:J

    .line 163
    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 164
    iput-object p2, p0, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    .line 165
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getAuthProvider()Lcom/google/firebase/auth/internal/InternalAuthProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    .line 166
    new-instance v1, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    invoke-direct {v1, p3, v6}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    .line 167
    iput-boolean v5, p0, Lcom/google/firebase/storage/UploadTask;->mIsStreamOwned:Z

    .line 168
    iput-object v4, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    .line 169
    new-instance v1, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 171
    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    iget-object v4, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 173
    invoke-virtual {v4}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxUploadRetryTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;-><init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/InternalAuthProvider;J)V

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 174
    return-void
.end method

.method constructor <init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;[B)V
    .locals 6
    .param p1, "targetRef"    # Lcom/google/firebase/storage/StorageReference;
    .param p2, "metadata"    # Lcom/google/firebase/storage/StorageMetadata;
    .param p3, "bytes"    # [B

    .prologue
    const/high16 v5, 0x40000

    const/4 v4, 0x0

    .line 74
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;-><init>()V

    .line 62
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

    .line 64
    iput v5, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    .line 68
    iput-object v4, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    .line 69
    iput-object v4, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 70
    iput-object v4, p0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    .line 75
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    .line 80
    .local v0, "storage":Lcom/google/firebase/storage/FirebaseStorage;
    array-length v1, p3

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/google/firebase/storage/UploadTask;->mTotalByteCount:J

    .line 81
    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 82
    iput-object p2, p0, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    .line 83
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getAuthProvider()Lcom/google/firebase/auth/internal/InternalAuthProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    .line 84
    iput-object v4, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    .line 85
    new-instance v1, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2, v5}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    .line 87
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/firebase/storage/UploadTask;->mIsStreamOwned:Z

    .line 89
    new-instance v1, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 91
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 92
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getAuthProvider()Lcom/google/firebase/auth/internal/InternalAuthProvider;

    move-result-object v3

    .line 93
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxDownloadRetryTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;-><init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/InternalAuthProvider;J)V

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/storage/UploadTask;)Lcom/google/firebase/auth/internal/InternalAuthProvider;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/storage/UploadTask;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firebase/storage/UploadTask;)Lcom/google/firebase/storage/StorageReference;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/storage/UploadTask;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    return-object v0
.end method

.method private beginResumableUpload()V
    .locals 8

    .prologue
    .line 250
    const/4 v2, 0x0

    .line 251
    .local v2, "mimeType":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    if-eqz v5, :cond_0

    .line 252
    iget-object v5, p0, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    invoke-virtual {v5}, Lcom/google/firebase/storage/StorageMetadata;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 254
    :cond_0
    iget-object v5, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    if-eqz v5, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 255
    iget-object v5, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v5}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 256
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 258
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 259
    const-string v2, "application/octet-stream"

    .line 263
    :cond_2
    :try_start_0
    new-instance v3, Lcom/google/firebase/storage/network/ResumableUploadStartRequest;

    iget-object v5, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 265
    invoke-virtual {v5}, Lcom/google/firebase/storage/StorageReference;->getStorageUri()Landroid/net/Uri;

    move-result-object v6

    iget-object v5, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 266
    invoke-virtual {v5}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v7

    .line 267
    iget-object v5, p0, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    invoke-virtual {v5}, Lcom/google/firebase/storage/StorageMetadata;->createJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    :goto_0
    invoke-direct {v3, v6, v7, v5, v2}, Lcom/google/firebase/storage/network/ResumableUploadStartRequest;-><init>(Landroid/net/Uri;Lcom/google/firebase/FirebaseApp;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .local v3, "startRequest":Lcom/google/firebase/storage/network/NetworkRequest;
    invoke-direct {p0, v3}, Lcom/google/firebase/storage/UploadTask;->sendWithRetry(Lcom/google/firebase/storage/network/NetworkRequest;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 282
    .end local v3    # "startRequest":Lcom/google/firebase/storage/network/NetworkRequest;
    :cond_3
    :goto_1
    return-void

    .line 267
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "UploadTask"

    const-string v6, "Unable to create a network request from metadata"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    goto :goto_1

    .line 278
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v3    # "startRequest":Lcom/google/firebase/storage/network/NetworkRequest;
    :cond_5
    const-string v5, "X-Goog-Upload-URL"

    invoke-virtual {v3, v5}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, "uploadURL":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 280
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    goto :goto_1
.end method

.method private isValidHttpResponseCode(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 464
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

.method private processResultValid(Lcom/google/firebase/storage/network/NetworkRequest;)Z
    .locals 2
    .param p1, "request"    # Lcom/google/firebase/storage/network/NetworkRequest;

    .prologue
    .line 479
    invoke-virtual {p1}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultCode()I

    move-result v0

    .line 480
    .local v0, "resultCode":I
    iget-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v1, v0}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->isRetryableError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x2

    .end local v0    # "resultCode":I
    :cond_0
    iput v0, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    .line 481
    invoke-virtual {p1}, Lcom/google/firebase/storage/network/NetworkRequest;->getException()Ljava/lang/Exception;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    .line 482
    const-string v1, "X-Goog-Upload-Status"

    invoke-virtual {p1, v1}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mServerStatus:Ljava/lang/String;

    .line 483
    iget v1, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    invoke-direct {p0, v1}, Lcom/google/firebase/storage/UploadTask;->isValidHttpResponseCode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private recoverStatus(Z)Z
    .locals 12
    .param p1, "withRetry"    # Z

    .prologue
    const/4 v7, 0x0

    .line 353
    new-instance v6, Lcom/google/firebase/storage/network/ResumableUploadQueryRequest;

    iget-object v8, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 355
    invoke-virtual {v8}, Lcom/google/firebase/storage/StorageReference;->getStorageUri()Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v9}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v9

    iget-object v10, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v8, v9, v10}, Lcom/google/firebase/storage/network/ResumableUploadQueryRequest;-><init>(Landroid/net/Uri;Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)V

    .line 357
    .local v6, "queryRequest":Lcom/google/firebase/storage/network/NetworkRequest;
    const-string v8, "final"

    iget-object v9, p0, Lcom/google/firebase/storage/UploadTask;->mServerStatus:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 409
    :cond_0
    :goto_0
    return v7

    .line 361
    :cond_1
    if-eqz p1, :cond_3

    .line 362
    invoke-direct {p0, v6}, Lcom/google/firebase/storage/UploadTask;->sendWithRetry(Lcom/google/firebase/storage/network/NetworkRequest;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 371
    :cond_2
    const-string v8, "final"

    const-string v9, "X-Goog-Upload-Status"

    invoke-virtual {v6, v9}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 372
    new-instance v8, Ljava/io/IOException;

    const-string v9, "The server has terminated the upload session"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    goto :goto_0

    .line 366
    :cond_3
    invoke-direct {p0, v6}, Lcom/google/firebase/storage/UploadTask;->send(Lcom/google/firebase/storage/network/NetworkRequest;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    .line 376
    :cond_4
    const-string v8, "X-Goog-Upload-Size-Received"

    invoke-virtual {v6, v8}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "bytes":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 379
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 383
    .local v4, "newBytesUploaded":J
    :goto_1
    iget-object v8, p0, Lcom/google/firebase/storage/UploadTask;->mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 384
    .local v2, "currentBytes":J
    cmp-long v8, v2, v4

    if-lez v8, :cond_6

    .line 385
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Unexpected error. The server lost a chunk update."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    goto :goto_0

    .line 381
    .end local v2    # "currentBytes":J
    .end local v4    # "newBytesUploaded":J
    :cond_5
    const-wide/16 v4, 0x0

    .restart local v4    # "newBytesUploaded":J
    goto :goto_1

    .line 387
    .restart local v2    # "currentBytes":J
    :cond_6
    cmp-long v8, v2, v4

    if-gez v8, :cond_8

    .line 389
    :try_start_0
    iget-object v8, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    sub-long v10, v4, v2

    long-to-int v9, v10

    invoke-virtual {v8, v9}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->advance(I)I

    move-result v8

    int-to-long v8, v8

    sub-long v10, v4, v2

    cmp-long v8, v8, v10

    if-eqz v8, :cond_7

    .line 391
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Unexpected end of stream encountered."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v1

    .line 403
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "UploadTask"

    const-string v9, "Unable to recover position in Stream during resumable upload"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    goto :goto_0

    .line 394
    .end local v1    # "e":Ljava/io/IOException;
    :cond_7
    :try_start_1
    iget-object v8, p0, Lcom/google/firebase/storage/UploadTask;->mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v8

    if-nez v8, :cond_8

    .line 395
    const-string v8, "UploadTask"

    const-string v9, "Somehow, the uploaded bytes changed during an uploaded.  This should nothappen"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "uploaded bytes changed unexpectedly."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 409
    :cond_8
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method private send(Lcom/google/firebase/storage/network/NetworkRequest;)Z
    .locals 2
    .param p1, "request"    # Lcom/google/firebase/storage/network/NetworkRequest;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    .line 469
    invoke-static {v0}, Lcom/google/firebase/storage/internal/Util;->getCurrentAuthToken(Lcom/google/firebase/auth/internal/InternalAuthProvider;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 468
    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/storage/network/NetworkRequest;->performRequest(Ljava/lang/String;Landroid/content/Context;)V

    .line 470
    invoke-direct {p0, p1}, Lcom/google/firebase/storage/UploadTask;->processResultValid(Lcom/google/firebase/storage/network/NetworkRequest;)Z

    move-result v0

    return v0
.end method

.method private sendWithRetry(Lcom/google/firebase/storage/network/NetworkRequest;)Z
    .locals 1
    .param p1, "request"    # Lcom/google/firebase/storage/network/NetworkRequest;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->sendWithExponentialBackoff(Lcom/google/firebase/storage/network/NetworkRequest;)V

    .line 475
    invoke-direct {p0, p1}, Lcom/google/firebase/storage/UploadTask;->processResultValid(Lcom/google/firebase/storage/network/NetworkRequest;)Z

    move-result v0

    return v0
.end method

.method private serverStateValid()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 336
    const-string v1, "final"

    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mServerStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    iget-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 338
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The server has terminated the upload session"

    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    invoke-direct {v1, v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 341
    :cond_0
    const/16 v1, 0x40

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    .line 344
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private shouldContinue()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/16 v5, 0x40

    const/4 v1, 0x0

    .line 289
    invoke-virtual {p0}, Lcom/google/firebase/storage/UploadTask;->getInternalState()I

    move-result v3

    const/16 v4, 0x80

    if-ne v3, v4, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v1

    .line 294
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 295
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 296
    invoke-virtual {p0, v5, v1}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    goto :goto_0

    .line 299
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/storage/UploadTask;->getInternalState()I

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3

    .line 300
    const/16 v2, 0x100

    invoke-virtual {p0, v2, v1}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    goto :goto_0

    .line 303
    :cond_3
    invoke-virtual {p0}, Lcom/google/firebase/storage/UploadTask;->getInternalState()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    .line 304
    const/16 v2, 0x10

    invoke-virtual {p0, v2, v1}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    goto :goto_0

    .line 307
    :cond_4
    invoke-direct {p0}, Lcom/google/firebase/storage/UploadTask;->serverStateValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    if-nez v3, :cond_6

    .line 311
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    if-nez v2, :cond_5

    .line 312
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to obtain an upload URL."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 314
    :cond_5
    invoke-virtual {p0, v5, v1}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    goto :goto_0

    .line 317
    :cond_6
    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    if-eqz v3, :cond_7

    .line 318
    invoke-virtual {p0, v5, v1}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    goto :goto_0

    .line 322
    :cond_7
    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    if-nez v3, :cond_8

    iget v3, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_8

    iget v3, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    const/16 v4, 0x12c

    if-lt v3, v4, :cond_9

    :cond_8
    move v0, v2

    .line 324
    .local v0, "inErrorState":Z
    :goto_1
    if-eqz v0, :cond_a

    invoke-direct {p0, v2}, Lcom/google/firebase/storage/UploadTask;->recoverStatus(Z)Z

    move-result v3

    if-nez v3, :cond_a

    .line 326
    invoke-direct {p0}, Lcom/google/firebase/storage/UploadTask;->serverStateValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    invoke-virtual {p0, v5, v1}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    goto :goto_0

    .end local v0    # "inErrorState":Z
    :cond_9
    move v0, v1

    .line 322
    goto :goto_1

    .restart local v0    # "inErrorState":Z
    :cond_a
    move v1, v2

    .line 332
    goto :goto_0
.end method

.method private uploadChunk()V
    .locals 10

    .prologue
    .line 414
    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    iget v3, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    invoke-virtual {v2, v3}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->fill(I)I

    .line 415
    iget v2, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    invoke-virtual {v3}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->available()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 417
    .local v8, "bytesToUpload":I
    new-instance v1, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;

    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 419
    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getStorageUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 420
    invoke-virtual {v3}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    .line 421
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    .line 422
    invoke-virtual {v5}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->get()[B

    move-result-object v5

    iget-object v6, p0, Lcom/google/firebase/storage/UploadTask;->mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

    .line 423
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    iget-object v9, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    .line 425
    invoke-virtual {v9}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->isFinished()Z

    move-result v9

    invoke-direct/range {v1 .. v9}, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;-><init>(Landroid/net/Uri;Lcom/google/firebase/FirebaseApp;Ljava/lang/String;[BJIZ)V

    .line 427
    .local v1, "uploadRequest":Lcom/google/firebase/storage/network/NetworkRequest;
    invoke-direct {p0, v1}, Lcom/google/firebase/storage/UploadTask;->send(Lcom/google/firebase/storage/network/NetworkRequest;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 428
    const/high16 v2, 0x40000

    iput v2, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    .line 429
    const-string v2, "UploadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resetting chunk size to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .end local v1    # "uploadRequest":Lcom/google/firebase/storage/network/NetworkRequest;
    .end local v8    # "bytesToUpload":I
    :cond_0
    :goto_0
    return-void

    .line 433
    .restart local v1    # "uploadRequest":Lcom/google/firebase/storage/network/NetworkRequest;
    .restart local v8    # "bytesToUpload":I
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v4, v8

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 435
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    invoke-virtual {v2}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 436
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    invoke-virtual {v2, v8}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->advance(I)I

    .line 437
    iget v2, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    const/high16 v3, 0x2000000

    if-ge v2, v3, :cond_0

    .line 438
    iget v2, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    .line 439
    const-string v2, "UploadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Increasing chunk size to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 457
    .end local v1    # "uploadRequest":Lcom/google/firebase/storage/network/NetworkRequest;
    .end local v8    # "bytesToUpload":I
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "UploadTask"

    const-string v3, "Unable to read bytes for uploading"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    goto :goto_0

    .line 443
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "uploadRequest":Lcom/google/firebase/storage/network/NetworkRequest;
    .restart local v8    # "bytesToUpload":I
    :cond_2
    :try_start_1
    new-instance v2, Lcom/google/firebase/storage/StorageMetadata$Builder;

    .line 444
    invoke-virtual {v1}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultBody()Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-direct {v2, v3, v4}, Lcom/google/firebase/storage/StorageMetadata$Builder;-><init>(Lorg/json/JSONObject;Lcom/google/firebase/storage/StorageReference;)V

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageMetadata$Builder;->build()Lcom/google/firebase/storage/StorageMetadata;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 454
    const/4 v2, 0x4

    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p0, v2, v3}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    .line 455
    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    goto :goto_0

    .line 445
    :catch_1
    move-exception v0

    .line 446
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "UploadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse resulting metadata from upload:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 448
    invoke-virtual {v1}, Lcom/google/firebase/storage/network/NetworkRequest;->getRawResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 446
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 451
    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method getStorage()Lcom/google/firebase/storage/StorageReference;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    return-object v0
.end method

.method getTotalByteCount()J
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/google/firebase/storage/UploadTask;->mTotalByteCount:J

    return-wide v0
.end method

.method protected onCanceled()V
    .locals 5

    .prologue
    .line 488
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v2}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->cancel()V

    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, "cancelRequest":Lcom/google/firebase/storage/network/NetworkRequest;
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 492
    new-instance v0, Lcom/google/firebase/storage/network/ResumableUploadCancelRequest;

    .end local v0    # "cancelRequest":Lcom/google/firebase/storage/network/NetworkRequest;
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 494
    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getStorageUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v3}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/firebase/storage/network/ResumableUploadCancelRequest;-><init>(Landroid/net/Uri;Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)V

    .line 497
    .restart local v0    # "cancelRequest":Lcom/google/firebase/storage/network/NetworkRequest;
    :cond_0
    if-eqz v0, :cond_1

    .line 498
    move-object v1, v0

    .line 499
    .local v1, "finalCancelRequest":Lcom/google/firebase/storage/network/NetworkRequest;
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/storage/UploadTask$1;

    invoke-direct {v3, p0, v1}, Lcom/google/firebase/storage/UploadTask$1;-><init>(Lcom/google/firebase/storage/UploadTask;Lcom/google/firebase/storage/network/NetworkRequest;)V

    .line 500
    invoke-virtual {v2, v3}, Lcom/google/firebase/storage/StorageTaskScheduler;->scheduleCommand(Ljava/lang/Runnable;)V

    .line 510
    .end local v1    # "finalCancelRequest":Lcom/google/firebase/storage/network/NetworkRequest;
    :cond_1
    sget-object v2, Lcom/google/android/gms/common/api/Status;->RESULT_CANCELED:Lcom/google/android/gms/common/api/Status;

    invoke-static {v2}, Lcom/google/firebase/storage/StorageException;->fromErrorStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/storage/StorageException;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 512
    invoke-super {p0}, Lcom/google/firebase/storage/StorageTask;->onCanceled()V

    .line 513
    return-void
.end method

.method protected resetState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 242
    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 243
    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    .line 245
    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mServerStatus:Ljava/lang/String;

    .line 246
    return-void
.end method

.method run()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 197
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v2}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->reset()V

    .line 198
    invoke-virtual {p0, v5, v4}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 200
    const-string v2, "UploadTask"

    const-string v3, "The upload cannot continue as it is not in a valid state."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getParent()Lcom/google/firebase/storage/StorageReference;

    move-result-object v2

    if-nez v2, :cond_2

    .line 205
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot upload to getRoot. You should upload to a storage location such as .getReference(\'image.png\').putFile..."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 211
    :cond_2
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    if-nez v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    if-nez v2, :cond_4

    .line 216
    invoke-direct {p0}, Lcom/google/firebase/storage/UploadTask;->beginResumableUpload()V

    .line 221
    :goto_1
    invoke-direct {p0}, Lcom/google/firebase/storage/UploadTask;->shouldContinue()Z

    move-result v1

    .line 222
    .local v1, "shouldContinueToRun":Z
    :cond_3
    :goto_2
    if-eqz v1, :cond_5

    .line 223
    invoke-direct {p0}, Lcom/google/firebase/storage/UploadTask;->uploadChunk()V

    .line 224
    invoke-direct {p0}, Lcom/google/firebase/storage/UploadTask;->shouldContinue()Z

    move-result v1

    .line 226
    if-eqz v1, :cond_3

    .line 227
    invoke-virtual {p0, v5, v4}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    goto :goto_2

    .line 218
    .end local v1    # "shouldContinueToRun":Z
    :cond_4
    invoke-direct {p0, v4}, Lcom/google/firebase/storage/UploadTask;->recoverStatus(Z)Z

    goto :goto_1

    .line 231
    .restart local v1    # "shouldContinueToRun":Z
    :cond_5
    iget-boolean v2, p0, Lcom/google/firebase/storage/UploadTask;->mIsStreamOwned:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/storage/UploadTask;->getInternalState()I

    move-result v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    .line 233
    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    invoke-virtual {v2}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "UploadTask"

    const-string v3, "Unable to close stream."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected schedule()V
    .locals 2

    .prologue
    .line 190
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/storage/UploadTask;->getRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageTaskScheduler;->scheduleUpload(Ljava/lang/Runnable;)V

    .line 191
    return-void
.end method

.method bridge synthetic snapStateImpl()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/firebase/storage/UploadTask;->snapStateImpl()Lcom/google/firebase/storage/UploadTask$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method snapStateImpl()Lcom/google/firebase/storage/UploadTask$TaskSnapshot;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 518
    iget-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 519
    .local v0, "error":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;

    iget v2, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    .line 520
    invoke-static {v0, v2}, Lcom/google/firebase/storage/StorageException;->fromExceptionAndHttpCode(Ljava/lang/Throwable;I)Lcom/google/firebase/storage/StorageException;

    move-result-object v3

    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

    .line 521
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;-><init>(Lcom/google/firebase/storage/UploadTask;Ljava/lang/Exception;JLandroid/net/Uri;Lcom/google/firebase/storage/StorageMetadata;)V

    .line 519
    return-object v1

    .line 518
    .end local v0    # "error":Ljava/lang/Exception;
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    goto :goto_0
.end method
