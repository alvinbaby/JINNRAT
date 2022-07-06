.class final Landroidx/collection/ArrayMap$MapIterator;
.super Ljava/lang/Object;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/collection/ArrayMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field mEnd:I

.field mEntryValid:Z

.field mIndex:I

.field final synthetic this$0:Landroidx/collection/ArrayMap;


# direct methods
.method constructor <init>(Landroidx/collection/ArrayMap;)V
    .locals 5

    .prologue
    .line 531
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 532
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/collection/ArrayMap;->mSize:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroidx/collection/ArrayMap$MapIterator;->mEnd:I

    .line 533
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    .line 534
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 589
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/collection/ArrayMap$MapIterator;->mEntryValid:Z

    if-nez v3, :cond_0

    .line 590
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "This container does not support retaining Map.Entry objects"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 593
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/util/Map$Entry;

    if-nez v3, :cond_1

    .line 594
    const/4 v3, 0x0

    move v0, v3

    .line 597
    :goto_0
    return v0

    .line 596
    :cond_1
    move-object v3, v1

    check-cast v3, Ljava/util/Map$Entry;

    move-object v2, v3

    .line 597
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    move-object v5, v0

    iget v5, v5, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    invoke-virtual {v4, v5}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/collection/ContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v2

    .line 598
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    move-object v5, v0

    iget v5, v5, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    invoke-virtual {v4, v5}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/collection/ContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 597
    :goto_1
    move v0, v3

    goto :goto_0

    .line 598
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 562
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/collection/ArrayMap$MapIterator;->mEntryValid:Z

    if-nez v1, :cond_0

    .line 563
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "This container does not support retaining Map.Entry objects"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 566
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    move-object v2, v0

    iget v2, v2, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    invoke-virtual {v1, v2}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 571
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/collection/ArrayMap$MapIterator;->mEntryValid:Z

    if-nez v1, :cond_0

    .line 572
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "This container does not support retaining Map.Entry objects"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    move-object v2, v0

    iget v2, v2, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    invoke-virtual {v1, v2}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    .line 538
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    move-object v2, v0

    iget v2, v2, Landroidx/collection/ArrayMap$MapIterator;->mEnd:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 603
    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/collection/ArrayMap$MapIterator;->mEntryValid:Z

    if-nez v3, :cond_0

    .line 604
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "This container does not support retaining Map.Entry objects"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 607
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    move-object v4, v0

    iget v4, v4, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    invoke-virtual {v3, v4}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 608
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    move-object v4, v0

    iget v4, v4, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    invoke-virtual {v3, v4}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 609
    move-object v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x0

    .line 610
    :goto_0
    move-object v4, v2

    if-nez v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    xor-int/2addr v3, v4

    .line 609
    move v0, v3

    return v0

    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    .line 610
    :cond_2
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 526
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/collection/ArrayMap$MapIterator;->next()Ljava/util/Map$Entry;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 543
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/collection/ArrayMap$MapIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 544
    :cond_0
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    .line 545
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/collection/ArrayMap$MapIterator;->mEntryValid:Z

    .line 546
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 5

    .prologue
    .line 551
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/collection/ArrayMap$MapIterator;->mEntryValid:Z

    if-nez v1, :cond_0

    .line 552
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 554
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    move-object v2, v0

    iget v2, v2, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    invoke-virtual {v1, v2}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 555
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    .line 556
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroidx/collection/ArrayMap$MapIterator;->mEnd:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroidx/collection/ArrayMap$MapIterator;->mEnd:I

    .line 557
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/collection/ArrayMap$MapIterator;->mEntryValid:Z

    .line 558
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 580
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/collection/ArrayMap$MapIterator;->mEntryValid:Z

    if-nez v2, :cond_0

    .line 581
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "This container does not support retaining Map.Entry objects"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 584
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    move-object v3, v0

    iget v3, v3, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroidx/collection/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 615
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/collection/ArrayMap$MapIterator;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/collection/ArrayMap$MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
