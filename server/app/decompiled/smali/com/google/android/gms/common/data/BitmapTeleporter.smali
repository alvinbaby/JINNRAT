.class public Lcom/google/android/gms/common/data/BitmapTeleporter;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "BitmapTeleporterCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/data/BitmapTeleporter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zaa:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$VersionField;
        id = 0x1
    .end annotation
.end field

.field zab:Landroid/os/ParcelFileDescriptor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x2
    .end annotation
.end field

.field final zac:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x3
    .end annotation
.end field

.field private zad:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zae:Z

.field private zaf:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v1, Lcom/google/android/gms/common/data/zaa;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/common/data/zaa;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/data/BitmapTeleporter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/ParcelFileDescriptor;I)V
    .locals 6
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Landroid/os/ParcelFileDescriptor;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    .line 1
    invoke-direct {v4}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaa:I

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/android/gms/common/data/BitmapTeleporter;->zab:Landroid/os/ParcelFileDescriptor;

    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/google/android/gms/common/data/BitmapTeleporter;->zac:I

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/android/gms/common/data/BitmapTeleporter;->zad:Landroid/graphics/Bitmap;

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/android/gms/common/data/BitmapTeleporter;->zae:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    .line 2
    invoke-direct {v2}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaa:I

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/gms/common/data/BitmapTeleporter;->zab:Landroid/os/ParcelFileDescriptor;

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/android/gms/common/data/BitmapTeleporter;->zac:I

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/data/BitmapTeleporter;->zad:Landroid/graphics/Bitmap;

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/gms/common/data/BitmapTeleporter;->zae:Z

    return-void
.end method

.method private static final zaa(Ljava/io/Closeable;)V
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    :try_start_0
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :goto_0
    return-void

    .line 1
    :catch_0
    move-exception v1

    move-object v0, v1

    const-string v1, "BitmapTeleporter"

    const-string v2, "Could not close stream"

    move-object v3, v0

    .line 2
    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public get()Landroid/graphics/Bitmap;
    .locals 9
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/android/gms/common/data/BitmapTeleporter;->zae:Z

    if-nez v6, :cond_0

    new-instance v6, Ljava/io/DataInputStream;

    move-object v1, v6

    .line 1
    new-instance v6, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    move-object v2, v6

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/data/BitmapTeleporter;->zab:Landroid/os/ParcelFileDescriptor;

    .line 2
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v6, v7}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v6, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v1

    .line 3
    :try_start_0
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    new-array v6, v6, [B

    move-object v2, v6

    move-object v6, v1

    .line 4
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    move v3, v6

    move-object v6, v1

    .line 5
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    move v4, v6

    move-object v6, v1

    .line 6
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Bitmap$Config;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$Config;

    move-result-object v6

    move-object v5, v6

    move-object v6, v1

    move-object v7, v2

    .line 7
    invoke-virtual {v6, v7}, Ljava/io/DataInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    move-object v6, v1

    .line 9
    invoke-static {v6}, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaa(Ljava/io/Closeable;)V

    move-object v6, v2

    .line 11
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object v1, v6

    move v6, v3

    move v7, v4

    move-object v8, v5

    .line 12
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v2, v6

    move-object v6, v2

    move-object v7, v1

    .line 13
    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/google/android/gms/common/data/BitmapTeleporter;->zad:Landroid/graphics/Bitmap;

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/google/android/gms/common/data/BitmapTeleporter;->zae:Z

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/data/BitmapTeleporter;->zad:Landroid/graphics/Bitmap;

    move-object v0, v6

    return-object v0

    :catchall_0
    move-exception v6

    move-object v0, v6

    move-object v6, v1

    .line 9
    invoke-static {v6}, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaa(Ljava/io/Closeable;)V

    move-object v6, v0

    .line 10
    throw v6

    .line 8
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 10
    :try_start_1
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v2, v6

    move-object v6, v2

    const-string v7, "Could not read from parcel file descriptor"

    move-object v8, v0

    .line 8
    invoke-direct {v6, v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v2

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public release()V
    .locals 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/common/data/BitmapTeleporter;->zae:Z

    if-nez v1, :cond_0

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/google/android/gms/common/data/BitmapTeleporter;->zab:Landroid/os/ParcelFileDescriptor;

    move-object v0, v1

    move-object v1, v0

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    const-string v1, "BitmapTeleporter"

    const-string v2, "Could not close PFD"

    move-object v3, v0

    .line 2
    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    goto :goto_0
.end method

.method public setTempDir(Ljava/io/File;)V
    .locals 4
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v0, v2

    move-object v2, v0

    const-string v3, "Cannot set null temp directory"

    .line 1
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    throw v2

    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaf:Ljava/io/File;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 14
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/gms/common/data/BitmapTeleporter;->zab:Landroid/os/ParcelFileDescriptor;

    if-nez v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/gms/common/data/BitmapTeleporter;->zad:Landroid/graphics/Bitmap;

    .line 1
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    move-object v3, v9

    move-object v9, v3

    .line 2
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    move-object v10, v3

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int/2addr v9, v10

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    move-object v4, v9

    move-object v9, v3

    move-object v10, v4

    .line 3
    invoke-virtual {v9, v10}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    move-object v9, v4

    .line 4
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    move-object v4, v9

    .line 5
    new-instance v9, Ljava/io/BufferedOutputStream;

    move-object v5, v9

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaf:Ljava/io/File;

    move-object v6, v9

    move-object v9, v6

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v0, v9

    move-object v9, v0

    const-string v10, "setTempDir() must be called before writing this object to a parcel"

    .line 6
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    throw v9

    :cond_0
    :try_start_0
    const-string v9, "teleporter"

    move-object v7, v9

    const-string v9, ".tmp"

    move-object v8, v9

    move-object v9, v7

    move-object v10, v8

    move-object v11, v6

    .line 7
    invoke-static {v9, v10, v11}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v6, v9

    :try_start_1
    new-instance v9, Ljava/io/FileOutputStream;

    move-object v7, v9

    move-object v9, v7

    move-object v10, v6

    .line 9
    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v9, v0

    move-object v10, v6

    const/high16 v11, 0x10000000

    .line 10
    invoke-static {v10, v11}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    iput-object v10, v9, Lcom/google/android/gms/common/data/BitmapTeleporter;->zab:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v6

    .line 12
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v9

    move-object v9, v5

    move-object v10, v7

    .line 13
    invoke-direct {v9, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 14
    new-instance v9, Ljava/io/DataOutputStream;

    move-object v6, v9

    move-object v9, v6

    move-object v10, v5

    invoke-direct {v9, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v9, v6

    move-object v10, v4

    .line 15
    :try_start_2
    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object v9, v6

    move-object v10, v3

    .line 16
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object v9, v6

    move-object v10, v3

    .line 17
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object v9, v6

    move-object v10, v3

    .line 18
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap$Config;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    move-object v9, v6

    move-object v10, v4

    .line 19
    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v9, v6

    .line 21
    invoke-static {v9}, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaa(Ljava/io/Closeable;)V

    :cond_1
    move-object v9, v1

    .line 23
    invoke-static {v9}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v9

    move v3, v9

    move-object v9, v1

    const/4 v10, 0x1

    move-object v11, v0

    iget v11, v11, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaa:I

    .line 24
    invoke-static {v9, v10, v11}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    move-object v9, v1

    const/4 v10, 0x2

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/gms/common/data/BitmapTeleporter;->zab:Landroid/os/ParcelFileDescriptor;

    move v12, v2

    const/4 v13, 0x1

    or-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    .line 25
    invoke-static {v9, v10, v11, v12, v13}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    move-object v9, v1

    const/4 v10, 0x3

    move-object v11, v0

    iget v11, v11, Lcom/google/android/gms/common/data/BitmapTeleporter;->zac:I

    .line 26
    invoke-static {v9, v10, v11}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    move-object v9, v1

    move v10, v3

    .line 27
    invoke-static {v9, v10}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/google/android/gms/common/data/BitmapTeleporter;->zab:Landroid/os/ParcelFileDescriptor;

    return-void

    :catch_0
    move-exception v9

    move-object v0, v9

    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v1, v9

    move-object v9, v1

    const-string v10, "Could not create temporary file"

    move-object v11, v0

    .line 8
    invoke-direct {v9, v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v9, v1

    throw v9

    :catch_1
    move-exception v9

    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v0, v9

    move-object v9, v0

    const-string v10, "Temporary file is somehow already deleted"

    .line 11
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    throw v9

    :catchall_0
    move-exception v9

    move-object v0, v9

    move-object v9, v6

    .line 21
    invoke-static {v9}, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaa(Ljava/io/Closeable;)V

    move-object v9, v0

    .line 22
    throw v9

    .line 20
    :catch_2
    move-exception v9

    move-object v0, v9

    .line 22
    :try_start_3
    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v1, v9

    move-object v9, v1

    const-string v10, "Could not write into unlinked file"

    move-object v11, v0

    .line 20
    invoke-direct {v9, v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v9, v1

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
