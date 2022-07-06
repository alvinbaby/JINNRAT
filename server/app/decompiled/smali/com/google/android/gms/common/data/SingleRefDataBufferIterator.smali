.class public Lcom/google/android/gms/common/data/SingleRefDataBufferIterator;
.super Lcom/google/android/gms/common/data/DataBufferIterator;
.source "com.google.android.gms:play-services-base@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/data/DataBufferIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private zac:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


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

    move-object v3, v1

    .line 1
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/data/DataBufferIterator;-><init>(Lcom/google/android/gms/common/data/DataBuffer;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 7
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v4, v0

    .line 1
    invoke-virtual {v4}, Lcom/google/android/gms/common/data/DataBufferIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/NoSuchElementException;

    move-object v1, v4

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/common/data/SingleRefDataBufferIterator;->zab:I

    move v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v2, v4

    move-object v4, v2

    const/16 v5, 0x2e

    .line 2
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v2

    const-string v5, "Cannot advance the iterator beyond "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v2

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    throw v4

    :cond_0
    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/common/data/SingleRefDataBufferIterator;->zab:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v1, v4

    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/google/android/gms/common/data/SingleRefDataBufferIterator;->zab:I

    move v4, v1

    if-nez v4, :cond_1

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/data/SingleRefDataBufferIterator;->zaa:Lcom/google/android/gms/common/data/DataBuffer;

    const/4 v6, 0x0

    .line 3
    invoke-interface {v5, v6}, Lcom/google/android/gms/common/data/DataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/common/data/SingleRefDataBufferIterator;->zac:Ljava/lang/Object;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/data/SingleRefDataBufferIterator;->zac:Ljava/lang/Object;

    move-object v1, v4

    move-object v4, v1

    .line 4
    instance-of v4, v4, Lcom/google/android/gms/common/data/DataBufferRef;

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v0, v4

    move-object v4, v1

    .line 5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v3, v4

    move-object v4, v3

    move v5, v2

    const/16 v6, 0x2c

    add-int/lit8 v5, v5, 0x2c

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v3

    const-string v5, "DataBuffer reference of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v3

    const-string v5, " is not movable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    throw v4

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/data/SingleRefDataBufferIterator;->zac:Ljava/lang/Object;

    .line 6
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/data/DataBufferRef;

    move-object v5, v0

    iget v5, v5, Lcom/google/android/gms/common/data/SingleRefDataBufferIterator;->zab:I

    .line 7
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/data/DataBufferRef;->zaa(I)V

    .line 5
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/data/SingleRefDataBufferIterator;->zac:Ljava/lang/Object;

    move-object v0, v4

    return-object v0
.end method
