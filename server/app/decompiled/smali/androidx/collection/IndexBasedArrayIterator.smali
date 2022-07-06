.class abstract Landroidx/collection/IndexBasedArrayIterator;
.super Ljava/lang/Object;
.source "IndexBasedArrayIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
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
.field private mCanRemove:Z

.field private mIndex:I

.field private mSize:I


# direct methods
.method constructor <init>(I)V
    .locals 4

    .prologue
    .line 27
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 28
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/collection/IndexBasedArrayIterator;->mSize:I

    .line 29
    return-void
.end method


# virtual methods
.method protected abstract elementAt(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .locals 3

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/collection/IndexBasedArrayIterator;->mIndex:I

    move-object v2, v0

    iget v2, v2, Landroidx/collection/IndexBasedArrayIterator;->mSize:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/collection/IndexBasedArrayIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/NoSuchElementException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 42
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/collection/IndexBasedArrayIterator;->mIndex:I

    invoke-virtual {v2, v3}, Landroidx/collection/IndexBasedArrayIterator;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 43
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/collection/IndexBasedArrayIterator;->mIndex:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroidx/collection/IndexBasedArrayIterator;->mIndex:I

    .line 44
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/collection/IndexBasedArrayIterator;->mCanRemove:Z

    .line 45
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public remove()V
    .locals 7

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/collection/IndexBasedArrayIterator;->mCanRemove:Z

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 54
    :cond_0
    move-object v1, v0

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/collection/IndexBasedArrayIterator;->mIndex:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroidx/collection/IndexBasedArrayIterator;->mIndex:I

    invoke-virtual {v1, v2}, Landroidx/collection/IndexBasedArrayIterator;->removeAt(I)V

    .line 55
    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget v2, v2, Landroidx/collection/IndexBasedArrayIterator;->mSize:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroidx/collection/IndexBasedArrayIterator;->mSize:I

    .line 56
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/collection/IndexBasedArrayIterator;->mCanRemove:Z

    .line 57
    return-void
.end method

.method protected abstract removeAt(I)V
.end method
