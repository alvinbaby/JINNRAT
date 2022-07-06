.class public abstract Lcom/google/android/gms/common/data/EntityBuffer;
.super Lcom/google/android/gms/common/data/AbstractDataBuffer;
.source "com.google.android.gms:play-services-base@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/data/AbstractDataBuffer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private zaa:Z

.field private zab:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/common/data/DataHolder;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    .line 1
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/data/AbstractDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/android/gms/common/data/EntityBuffer;->zaa:Z

    return-void
.end method

.method private final zab()V
    .locals 11

    .prologue
    move-object v0, p0

    move-object v7, v0

    monitor-enter v7

    move-object v7, v0

    :try_start_0
    iget-boolean v7, v7, Lcom/google/android/gms/common/data/EntityBuffer;->zaa:Z

    move v1, v7

    move v7, v1

    if-nez v7, :cond_3

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/data/EntityBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    move-object v1, v7

    move-object v7, v1

    .line 1
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v7}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v7

    move v3, v7

    new-instance v7, Ljava/util/ArrayList;

    move-object v1, v7

    move-object v7, v1

    .line 2
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/google/android/gms/common/data/EntityBuffer;->zab:Ljava/util/ArrayList;

    move v7, v3

    if-lez v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/data/EntityBuffer;->zab:Ljava/util/ArrayList;

    const/4 v8, 0x0

    .line 3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    move-object v7, v0

    .line 4
    invoke-virtual {v7}, Lcom/google/android/gms/common/data/EntityBuffer;->getPrimaryDataMarkerColumn()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/data/EntityBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    move-object v1, v7

    move-object v7, v1

    const/4 v8, 0x0

    .line 5
    invoke-virtual {v7, v8}, Lcom/google/android/gms/common/data/DataHolder;->getWindowIndex(I)I

    move-result v7

    move v1, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/data/EntityBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    move-object v8, v4

    const/4 v9, 0x0

    move v10, v1

    .line 6
    invoke-virtual {v7, v8, v9, v10}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    const/4 v7, 0x1

    move v2, v7

    :goto_0
    move v7, v2

    move v8, v3

    if-ge v7, v8, :cond_2

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/data/EntityBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    move v8, v2

    .line 7
    invoke-virtual {v7, v8}, Lcom/google/android/gms/common/data/DataHolder;->getWindowIndex(I)I

    move-result v7

    move v5, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/data/EntityBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    move-object v8, v4

    move v9, v2

    move v10, v5

    .line 8
    invoke-virtual {v7, v8, v9, v10}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    move-object v7, v6

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/NullPointerException;

    move-object v1, v7

    move-object v7, v4

    .line 12
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v3, v7

    add-int/lit8 v3, v3, 0x4e

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v6, v7

    move-object v7, v6

    move v8, v3

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v7, v6

    const-string v8, "Missing value for markerColumn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    const-string v8, ", at row: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    const-string v8, ", for window: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v1

    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object v7, v1

    throw v7

    .line 11
    :catchall_0
    move-exception v7

    move-object v1, v7

    move-object v7, v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v1

    throw v7

    .line 12
    :cond_0
    move-object v7, v6

    move-object v8, v1

    .line 9
    :try_start_1
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    move v5, v7

    move v7, v5

    if-nez v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/data/EntityBuffer;->zab:Ljava/util/ArrayList;

    move v8, v2

    .line 10
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    move-object v7, v6

    move-object v1, v7

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/google/android/gms/common/data/EntityBuffer;->zaa:Z

    :cond_3
    move-object v7, v0

    .line 11
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 9
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    .line 1
    invoke-direct {v5}, Lcom/google/android/gms/common/data/EntityBuffer;->zab()V

    move-object v5, v0

    move v6, v1

    .line 2
    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/data/EntityBuffer;->zaa(I)I

    move-result v5

    move v3, v5

    move v5, v1

    if-ltz v5, :cond_5

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/data/EntityBuffer;->zab:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    move v1, v5

    :goto_0
    move-object v5, v0

    move v6, v3

    move v7, v1

    .line 2
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/common/data/EntityBuffer;->getEntry(II)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    return-object v0

    :cond_0
    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/data/EntityBuffer;->zab:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, -0x1

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/data/EntityBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    .line 5
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v5}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/data/EntityBuffer;->zab:Ljava/util/ArrayList;

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v5, v6

    move v2, v5

    :goto_1
    move v5, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    move-object v5, v0

    move v6, v1

    .line 7
    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/data/EntityBuffer;->zaa(I)I

    move-result v5

    move v1, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/data/EntityBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    .line 8
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/data/DataHolder;

    move v6, v1

    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/data/DataHolder;->getWindowIndex(I)I

    move-result v5

    move v2, v5

    move-object v5, v0

    .line 9
    invoke-virtual {v5}, Lcom/google/android/gms/common/data/EntityBuffer;->getChildDataMarkerColumn()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/data/EntityBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    move-object v6, v4

    move v7, v1

    move v8, v2

    .line 10
    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    move v1, v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    move v1, v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    move v1, v5

    goto :goto_0

    :cond_3
    move v5, v2

    move v1, v5

    goto :goto_0

    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/data/EntityBuffer;->zab:Ljava/util/ArrayList;

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 6
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/data/EntityBuffer;->zab:Ljava/util/ArrayList;

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v5, v6

    move v2, v5

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    move v1, v5

    goto/16 :goto_0
.end method

.method protected getChildDataMarkerColumn()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getCount()I
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-direct {v1}, Lcom/google/android/gms/common/data/EntityBuffer;->zab()V

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/data/EntityBuffer;->zab:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    return v0
.end method

.method protected abstract getEntry(II)Ljava/lang/Object;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation
.end method

.method protected abstract getPrimaryDataMarkerColumn()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end method

.method final zaa(I)I
    .locals 5

    .prologue
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/data/EntityBuffer;->zab:Ljava/util/ArrayList;

    .line 1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v2, v3

    move-object v3, v2

    const/16 v4, 0x35

    .line 2
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v2

    const-string v4, "Position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v3, v2

    const-string v4, " is out of bounds for this buffer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    throw v3

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/data/EntityBuffer;->zab:Ljava/util/ArrayList;

    move v4, v1

    .line 3
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    return v0
.end method
