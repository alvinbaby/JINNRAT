.class public abstract Lcom/google/android/gms/common/data/DataBufferRef;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field protected final mDataHolder:Lcom/google/android/gms/common/data/DataHolder;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field protected mDataRow:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field private zaa:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 5
    .param p1    # Lcom/google/android/gms/common/data/DataHolder;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    .line 1
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/data/DataHolder;

    iput-object v4, v3, Lcom/google/android/gms/common/data/DataBufferRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    move-object v3, v0

    move v4, v2

    .line 2
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/data/DataBufferRef;->zaa(I)V

    return-void
.end method


# virtual methods
.method protected copyToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/database/CharArrayBuffer;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/data/DataBufferRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/google/android/gms/common/data/DataBufferRef;->mDataRow:I

    move-object v6, v0

    iget v6, v6, Lcom/google/android/gms/common/data/DataBufferRef;->zaa:I

    move-object v7, v2

    .line 1
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/gms/common/data/DataHolder;->zad(Ljava/lang/String;IILandroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    .line 1
    instance-of v2, v2, Lcom/google/android/gms/common/data/DataBufferRef;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 2
    check-cast v2, Lcom/google/android/gms/common/data/DataBufferRef;

    move-object v1, v2

    move-object v2, v1

    .line 3
    iget v2, v2, Lcom/google/android/gms/common/data/DataBufferRef;->mDataRow:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/google/android/gms/common/data/DataBufferRef;->mDataRow:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    iget v2, v2, Lcom/google/android/gms/common/data/DataBufferRef;->zaa:I

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/google/android/gms/common/data/DataBufferRef;->zaa:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/google/android/gms/common/data/DataBufferRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/data/DataBufferRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method protected getBoolean(Ljava/lang/String;)Z
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/data/DataBufferRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/common/data/DataBufferRef;->mDataRow:I

    move-object v5, v0

    iget v5, v5, Lcom/google/android/gms/common/data/DataBufferRef;->zaa:I

    .line 1
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/common/data/DataHolder;->getBoolean(Ljava/lang/String;II)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method protected getByteArray(Ljava/lang/String;)[B
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/data/DataBufferRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/common/data/DataBufferRef;->mDataRow:I

    move-object v5, v0

    iget v5, v5, Lcom/google/android/gms/common/data/DataBufferRef;->zaa:I

    .line 1
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/common/data/DataHolder;->getByteArray(Ljava/lang/String;II)[B

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected getDataRow()I
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/common/data/DataBufferRef;->mDataRow:I

    move v0, v1

    return v0
.end method

.method protected getDouble(Ljava/lang/String;)D
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/data/DataBufferRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/common/data/DataBufferRef;->mDataRow:I

    move-object v5, v0

    iget v5, v5, Lcom/google/android/gms/common/data/DataBufferRef;->zaa:I

    .line 1
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/common/data/DataHolder;->zac(Ljava/lang/String;II)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method protected getFloat(Ljava/lang/String;)F
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/data/DataBufferRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/common/data/DataBufferRef;->mDataRow:I

    move-object v5, v0

    iget v5, v5, Lcom/google/android/gms/common/data/DataBufferRef;->zaa:I

    .line 1
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/common/data/DataHolder;->zab(Ljava/lang/String;II)F

    move-result v2

    move v0, v2

    return v0
.end method

.method protected getInteger(Ljava/lang/String;)I
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/data/DataBufferRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/common/data/DataBufferRef;->mDataRow:I

    move-object v5, v0

    iget v5, v5, Lcom/google/android/gms/common/data/DataBufferRef;->zaa:I

    .line 1
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/common/data/DataHolder;->getInteger(Ljava/lang/String;II)I

    move-result v2

    move v0, v2

    return v0
.end method

.method protected getLong(Ljava/lang/String;)J
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/data/DataBufferRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/common/data/DataBufferRef;->mDataRow:I

    move-object v5, v0

    iget v5, v5, Lcom/google/android/gms/common/data/DataBufferRef;->zaa:I

    .line 1
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/common/data/DataHolder;->getLong(Ljava/lang/String;II)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method protected getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/data/DataBufferRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/common/data/DataBufferRef;->mDataRow:I

    move-object v5, v0

    iget v5, v5, Lcom/google/android/gms/common/data/DataBufferRef;->zaa:I

    .line 1
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public hasColumn(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/data/DataBufferRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    move-object v3, v1

    .line 1
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/data/DataHolder;->hasColumn(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method protected hasNull(Ljava/lang/String;)Z
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/data/DataBufferRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/common/data/DataBufferRef;->mDataRow:I

    move-object v5, v0

    iget v5, v5, Lcom/google/android/gms/common/data/DataBufferRef;->zaa:I

    .line 1
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/common/data/DataHolder;->hasNull(Ljava/lang/String;II)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public hashCode()I
    .locals 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    move-object v1, v2

    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/common/data/DataBufferRef;->mDataRow:I

    .line 1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/common/data/DataBufferRef;->zaa:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v2, v1

    const/4 v3, 0x2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/data/DataBufferRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    aput-object v4, v2, v3

    move-object v2, v1

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public isDataValid()Z
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/data/DataBufferRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method protected parseUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/data/DataBufferRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/common/data/DataBufferRef;->mDataRow:I

    move-object v5, v0

    iget v5, v5, Lcom/google/android/gms/common/data/DataBufferRef;->zaa:I

    .line 1
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    .line 2
    :goto_0
    return-object v0

    .line 1
    :cond_0
    move-object v2, v0

    .line 2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method protected final zaa(I)V
    .locals 6

    .prologue
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-ltz v3, :cond_1

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/data/DataBufferRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    .line 1
    invoke-virtual {v4}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    const/4 v3, 0x1

    move v2, v3

    :goto_0
    move v3, v2

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/android/gms/common/data/DataBufferRef;->mDataRow:I

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/data/DataBufferRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    move v5, v1

    .line 2
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/data/DataHolder;->getWindowIndex(I)I

    move-result v4

    iput v4, v3, Lcom/google/android/gms/common/data/DataBufferRef;->zaa:I

    return-void

    :cond_0
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0
.end method
