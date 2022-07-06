.class public final Lcom/google/android/gms/common/util/DataUtils;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyStringToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/database/CharArrayBuffer;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    .line 1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 5
    :goto_0
    return-void

    .line 1
    :cond_0
    move-object v2, v1

    .line 2
    iget-object v2, v2, Landroid/database/CharArrayBuffer;->data:[C

    if-eqz v2, :cond_1

    move-object v2, v1

    iget-object v2, v2, Landroid/database/CharArrayBuffer;->data:[C

    array-length v2, v2

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    :cond_1
    move-object v2, v1

    move-object v3, v0

    .line 3
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iput-object v3, v2, Landroid/database/CharArrayBuffer;->data:[C

    :goto_1
    move-object v2, v1

    move-object v3, v0

    .line 5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    goto :goto_0

    :cond_2
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v0

    .line 4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move-object v5, v1

    iget-object v5, v5, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_1
.end method

.method public static loadImageBytes(Landroid/graphics/Bitmap;)[B
    .locals 6
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    .line 1
    move-object v0, p0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    move-object v1, v2

    move-object v2, v1

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v0

    .line 2
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    move-object v2, v1

    .line 3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
