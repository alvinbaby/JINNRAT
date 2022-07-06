.class public Lcom/google/android/gms/common/data/DataBufferIterator;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final zaa:Lcom/google/android/gms/common/data/DataBuffer;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/data/DataBuffer",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected zab:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataBuffer;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/common/data/DataBuffer;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataBuffer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    .line 1
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/data/DataBuffer;

    iput-object v3, v2, Lcom/google/android/gms/common/data/DataBufferIterator;->zaa:Lcom/google/android/gms/common/data/DataBuffer;

    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/android/gms/common/data/DataBufferIterator;->zab:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/common/data/DataBufferIterator;->zab:I

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/data/DataBufferIterator;->zaa:Lcom/google/android/gms/common/data/DataBuffer;

    .line 1
    invoke-interface {v2}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result v2

    const/4 v3, -0x1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 5
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v3, v0

    .line 1
    invoke-virtual {v3}, Lcom/google/android/gms/common/data/DataBufferIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/NoSuchElementException;

    move-object v1, v3

    move-object v3, v0

    iget v3, v3, Lcom/google/android/gms/common/data/DataBufferIterator;->zab:I

    move v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v2, v3

    move-object v3, v2

    const/16 v4, 0x2e

    .line 2
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v2

    const-string v4, "Cannot advance the iterator beyond "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v3, v2

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    throw v3

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/data/DataBufferIterator;->zaa:Lcom/google/android/gms/common/data/DataBuffer;

    move-object v1, v3

    move-object v3, v0

    iget v3, v3, Lcom/google/android/gms/common/data/DataBufferIterator;->zab:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v2, v3

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/android/gms/common/data/DataBufferIterator;->zab:I

    move-object v3, v1

    move v4, v2

    .line 3
    invoke-interface {v3, v4}, Lcom/google/android/gms/common/data/DataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public final remove()V
    .locals 3

    .prologue
    move-object v0, p0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v0, v1

    move-object v1, v0

    const-string v2, "Cannot remove elements from a DataBufferIterator"

    .line 1
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    throw v1
.end method
