.class public Landroidx/recyclerview/widget/DiffUtil$DiffResult;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffResult"
.end annotation


# static fields
.field private static final FLAG_CHANGED:I = 0x2

.field private static final FLAG_MASK:I = 0xf

.field private static final FLAG_MOVED:I = 0xc

.field private static final FLAG_MOVED_CHANGED:I = 0x4

.field private static final FLAG_MOVED_NOT_CHANGED:I = 0x8

.field private static final FLAG_NOT_CHANGED:I = 0x1

.field private static final FLAG_OFFSET:I = 0x4

.field public static final NO_POSITION:I = -0x1


# instance fields
.field private final mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

.field private final mDetectMoves:Z

.field private final mDiagonals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/DiffUtil$Diagonal;",
            ">;"
        }
    .end annotation
.end field

.field private final mNewItemStatuses:[I

.field private final mNewListSize:I

.field private final mOldItemStatuses:[I

.field private final mOldListSize:I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[IZ)V
    .locals 2
    .param p1, "callback"    # Landroidx/recyclerview/widget/DiffUtil$Callback;
    .param p3, "oldItemStatuses"    # [I
    .param p4, "newItemStatuses"    # [I
    .param p5, "detectMoves"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$Callback;",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/DiffUtil$Diagonal;",
            ">;[I[IZ)V"
        }
    .end annotation

    .prologue
    .local p2, "diagonals":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$Diagonal;>;"
    const/4 v1, 0x0

    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    iput-object p2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    .line 666
    iput-object p3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 667
    iput-object p4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    .line 668
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 669
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 670
    iput-object p1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 671
    invoke-virtual {p1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    .line 672
    invoke-virtual {p1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    .line 673
    iput-boolean p5, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    .line 674
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->addEdgeDiagonals()V

    .line 675
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findMatchingItems()V

    .line 676
    return-void
.end method

.method private addEdgeDiagonals()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 683
    iget-object v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 685
    .local v0, "first":Landroidx/recyclerview/widget/DiffUtil$Diagonal;
    :goto_0
    if-eqz v0, :cond_0

    iget v1, v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    if-nez v1, :cond_0

    iget v1, v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    if-eqz v1, :cond_1

    .line 686
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    invoke-direct {v2, v5, v5, v5}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    invoke-interface {v1, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 689
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    iget v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    iget v4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    invoke-direct {v2, v3, v4, v5}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    return-void

    .line 683
    .end local v0    # "first":Landroidx/recyclerview/widget/DiffUtil$Diagonal;
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    move-object v0, v1

    goto :goto_0
.end method

.method private findMatchingAddition(I)V
    .locals 9
    .param p1, "posX"    # I

    .prologue
    .line 738
    const/4 v6, 0x0

    .line 739
    .local v6, "posY":I
    iget-object v7, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .line 740
    .local v3, "diagonalsSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 741
    iget-object v7, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 742
    .local v2, "diagonal":Landroidx/recyclerview/widget/DiffUtil$Diagonal;
    :goto_1
    iget v7, v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    if-ge v6, v7, :cond_3

    .line 744
    iget-object v7, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    aget v7, v7, v6

    if-nez v7, :cond_2

    .line 745
    iget-object v7, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {v7, p1, v6}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v5

    .line 746
    .local v5, "matching":Z
    if-eqz v5, :cond_2

    .line 748
    iget-object v7, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {v7, p1, v6}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v1

    .line 749
    .local v1, "contentsMatching":Z
    if-eqz v1, :cond_1

    const/16 v0, 0x8

    .line 752
    .local v0, "changeFlag":I
    :goto_2
    iget-object v7, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v8, v6, 0x4

    or-int/2addr v8, v0

    aput v8, v7, p1

    .line 753
    iget-object v7, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 v8, p1, 0x4

    or-int/2addr v8, v0

    aput v8, v7, v6

    .line 761
    .end local v0    # "changeFlag":I
    .end local v1    # "contentsMatching":Z
    .end local v2    # "diagonal":Landroidx/recyclerview/widget/DiffUtil$Diagonal;
    .end local v5    # "matching":Z
    :cond_0
    return-void

    .line 750
    .restart local v1    # "contentsMatching":Z
    .restart local v2    # "diagonal":Landroidx/recyclerview/widget/DiffUtil$Diagonal;
    .restart local v5    # "matching":Z
    :cond_1
    const/4 v0, 0x4

    goto :goto_2

    .line 757
    .end local v1    # "contentsMatching":Z
    .end local v5    # "matching":Z
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 759
    :cond_3
    invoke-virtual {v2}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->endY()I

    move-result v6

    .line 740
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private findMatchingItems()V
    .locals 9

    .prologue
    .line 698
    iget-object v6, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 699
    .local v1, "diagonal":Landroidx/recyclerview/widget/DiffUtil$Diagonal;
    const/4 v2, 0x0

    .local v2, "offset":I
    :goto_0
    iget v7, v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    if-ge v2, v7, :cond_0

    .line 700
    iget v7, v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    add-int v3, v7, v2

    .line 701
    .local v3, "posX":I
    iget v7, v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    add-int v4, v7, v2

    .line 702
    .local v4, "posY":I
    iget-object v7, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {v7, v3, v4}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v5

    .line 703
    .local v5, "theSame":Z
    if-eqz v5, :cond_1

    const/4 v0, 0x1

    .line 704
    .local v0, "changeFlag":I
    :goto_1
    iget-object v7, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v8, v4, 0x4

    or-int/2addr v8, v0

    aput v8, v7, v3

    .line 705
    iget-object v7, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 v8, v3, 0x4

    or-int/2addr v8, v0

    aput v8, v7, v4

    .line 699
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 703
    .end local v0    # "changeFlag":I
    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    .line 709
    .end local v1    # "diagonal":Landroidx/recyclerview/widget/DiffUtil$Diagonal;
    .end local v2    # "offset":I
    .end local v3    # "posX":I
    .end local v4    # "posY":I
    .end local v5    # "theSame":Z
    :cond_2
    iget-boolean v6, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    if-eqz v6, :cond_3

    .line 712
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findMoveMatches()V

    .line 714
    :cond_3
    return-void
.end method

.method private findMoveMatches()V
    .locals 4

    .prologue
    .line 718
    const/4 v1, 0x0

    .line 719
    .local v1, "posX":I
    iget-object v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 720
    .local v0, "diagonal":Landroidx/recyclerview/widget/DiffUtil$Diagonal;
    :goto_1
    iget v3, v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    if-ge v1, v3, :cond_1

    .line 721
    iget-object v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    aget v3, v3, v1

    if-nez v3, :cond_0

    .line 723
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findMatchingAddition(I)V

    .line 725
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 728
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->endX()I

    move-result v1

    .line 729
    goto :goto_0

    .line 730
    .end local v0    # "diagonal":Landroidx/recyclerview/widget/DiffUtil$Diagonal;
    :cond_2
    return-void
.end method

.method private static getPostponedUpdate(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    .locals 4
    .param p1, "posInList"    # I
    .param p2, "removal"    # Z
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;",
            ">;IZ)",
            "Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;"
        }
    .end annotation

    .prologue
    .line 975
    .local p0, "postponedUpdates":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;>;"
    const/4 v1, 0x0

    .line 976
    .local v1, "postponedUpdate":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 977
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 978
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 979
    .local v2, "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    iget v3, v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->posInOwnerList:I

    if-ne v3, p1, :cond_0

    iget-boolean v3, v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->removal:Z

    if-ne v3, p2, :cond_0

    .line 980
    move-object v1, v2

    .line 981
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 985
    .end local v2    # "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 987
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 988
    .restart local v2    # "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    if-eqz p2, :cond_2

    .line 989
    iget v3, v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    goto :goto_0

    .line 991
    :cond_2
    iget v3, v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    goto :goto_0

    .line 994
    .end local v2    # "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    :cond_3
    return-object v1
.end method


# virtual methods
.method public convertNewPositionToOld(I)I
    .locals 4
    .param p1, "newListPosition"    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 795
    if-ltz p1, :cond_0

    iget v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    if-lt p1, v1, :cond_1

    .line 796
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index out of bounds - passed position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new list size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 799
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    aget v0, v1, p1

    .line 800
    .local v0, "status":I
    and-int/lit8 v1, v0, 0xf

    if-nez v1, :cond_2

    .line 801
    const/4 v1, -0x1

    .line 803
    :goto_0
    return v1

    :cond_2
    shr-int/lit8 v1, v0, 0x4

    goto :goto_0
.end method

.method public convertOldPositionToNew(I)I
    .locals 4
    .param p1, "oldListPosition"    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 773
    if-ltz p1, :cond_0

    iget v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    if-lt p1, v1, :cond_1

    .line 774
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index out of bounds - passed position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", old list size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 777
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    aget v0, v1, p1

    .line 778
    .local v0, "status":I
    and-int/lit8 v1, v0, 0xf

    if-nez v1, :cond_2

    .line 779
    const/4 v1, -0x1

    .line 781
    :goto_0
    return v1

    :cond_2
    shr-int/lit8 v1, v0, 0x4

    goto :goto_0
.end method

.method public dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V
    .locals 23
    .param p1, "updateCallback"    # Landroidx/recyclerview/widget/ListUpdateCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 855
    move-object/from16 v0, p1

    instance-of v0, v0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v3, p1

    .line 856
    check-cast v3, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    .line 868
    .local v3, "batchingCallback":Landroidx/recyclerview/widget/BatchingListUpdateCallback;
    :goto_0
    move-object/from16 v0, p0

    iget v5, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    .line 870
    .local v5, "currentListSize":I
    new-instance v16, Ljava/util/ArrayDeque;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayDeque;-><init>()V

    .line 872
    .local v16, "postponedUpdates":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;>;"
    move-object/from16 v0, p0

    iget v13, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    .line 873
    .local v13, "posX":I
    move-object/from16 v0, p0

    iget v14, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    .line 877
    .local v14, "posY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v7, v20, -0x1

    .local v7, "diagonalIndex":I
    :goto_1
    if-ltz v7, :cond_a

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 879
    .local v6, "diagonal":Landroidx/recyclerview/widget/DiffUtil$Diagonal;
    invoke-virtual {v6}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->endX()I

    move-result v8

    .line 880
    .local v8, "endX":I
    invoke-virtual {v6}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->endY()I

    move-result v9

    .line 884
    .local v9, "endY":I
    :cond_0
    :goto_2
    if-le v13, v8, :cond_4

    .line 885
    add-int/lit8 v13, v13, -0x1

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    move-object/from16 v20, v0

    aget v17, v20, v13

    .line 888
    .local v17, "status":I
    and-int/lit8 v20, v17, 0xc

    if-eqz v20, :cond_3

    .line 889
    shr-int/lit8 v11, v17, 0x4

    .line 891
    .local v11, "newPos":I
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v11, v1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-result-object v15

    .line 893
    .local v15, "postponedUpdate":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    if-eqz v15, :cond_2

    .line 895
    iget v0, v15, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    move/from16 v20, v0

    sub-int v18, v5, v20

    .line 896
    .local v18, "updatedNewPos":I
    add-int/lit8 v20, v18, -0x1

    move/from16 v0, v20

    invoke-virtual {v3, v13, v0}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    .line 897
    and-int/lit8 v20, v17, 0x4

    if-eqz v20, :cond_0

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v11}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v4

    .line 899
    .local v4, "changePayload":Ljava/lang/Object;
    add-int/lit8 v20, v18, -0x1

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1, v4}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_2

    .line 858
    .end local v3    # "batchingCallback":Landroidx/recyclerview/widget/BatchingListUpdateCallback;
    .end local v4    # "changePayload":Ljava/lang/Object;
    .end local v5    # "currentListSize":I
    .end local v6    # "diagonal":Landroidx/recyclerview/widget/DiffUtil$Diagonal;
    .end local v7    # "diagonalIndex":I
    .end local v8    # "endX":I
    .end local v9    # "endY":I
    .end local v11    # "newPos":I
    .end local v13    # "posX":I
    .end local v14    # "posY":I
    .end local v15    # "postponedUpdate":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    .end local v16    # "postponedUpdates":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;>;"
    .end local v17    # "status":I
    .end local v18    # "updatedNewPos":I
    :cond_1
    new-instance v3, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 862
    .restart local v3    # "batchingCallback":Landroidx/recyclerview/widget/BatchingListUpdateCallback;
    move-object/from16 p1, v3

    goto/16 :goto_0

    .line 903
    .restart local v5    # "currentListSize":I
    .restart local v6    # "diagonal":Landroidx/recyclerview/widget/DiffUtil$Diagonal;
    .restart local v7    # "diagonalIndex":I
    .restart local v8    # "endX":I
    .restart local v9    # "endY":I
    .restart local v11    # "newPos":I
    .restart local v13    # "posX":I
    .restart local v14    # "posY":I
    .restart local v15    # "postponedUpdate":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    .restart local v16    # "postponedUpdates":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;>;"
    .restart local v17    # "status":I
    :cond_2
    new-instance v20, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    sub-int v21, v5, v13

    add-int/lit8 v21, v21, -0x1

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v13, v1, v2}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 911
    .end local v11    # "newPos":I
    .end local v15    # "postponedUpdate":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    :cond_3
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v13, v0}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onRemoved(II)V

    .line 912
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 915
    .end local v17    # "status":I
    :cond_4
    :goto_3
    if-le v14, v9, :cond_7

    .line 916
    add-int/lit8 v14, v14, -0x1

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    move-object/from16 v20, v0

    aget v17, v20, v14

    .line 919
    .restart local v17    # "status":I
    and-int/lit8 v20, v17, 0xc

    if-eqz v20, :cond_6

    .line 922
    shr-int/lit8 v12, v17, 0x4

    .line 924
    .local v12, "oldPos":I
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v12, v1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-result-object v15

    .line 927
    .restart local v15    # "postponedUpdate":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    if-nez v15, :cond_5

    .line 929
    new-instance v20, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    sub-int v21, v5, v13

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v14, v1, v2}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 938
    :cond_5
    iget v0, v15, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    move/from16 v20, v0

    sub-int v20, v5, v20

    add-int/lit8 v19, v20, -0x1

    .line 939
    .local v19, "updatedOldPos":I
    move/from16 v0, v19

    invoke-virtual {v3, v0, v13}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    .line 940
    and-int/lit8 v20, v17, 0x4

    if-eqz v20, :cond_4

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v14}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v4

    .line 942
    .restart local v4    # "changePayload":Ljava/lang/Object;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v13, v0, v4}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_3

    .line 947
    .end local v4    # "changePayload":Ljava/lang/Object;
    .end local v12    # "oldPos":I
    .end local v15    # "postponedUpdate":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    .end local v19    # "updatedOldPos":I
    :cond_6
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v13, v0}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onInserted(II)V

    .line 948
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 952
    .end local v17    # "status":I
    :cond_7
    iget v13, v6, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 953
    iget v14, v6, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    .line 954
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    iget v0, v6, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_9

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    move-object/from16 v20, v0

    aget v20, v20, v13

    and-int/lit8 v20, v20, 0xf

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v14}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v4

    .line 958
    .restart local v4    # "changePayload":Ljava/lang/Object;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v13, v0, v4}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 960
    .end local v4    # "changePayload":Ljava/lang/Object;
    :cond_8
    add-int/lit8 v13, v13, 0x1

    .line 961
    add-int/lit8 v14, v14, 0x1

    .line 954
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 964
    :cond_9
    iget v13, v6, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 965
    iget v14, v6, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    .line 877
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    .line 967
    .end local v6    # "diagonal":Landroidx/recyclerview/widget/DiffUtil$Diagonal;
    .end local v8    # "endX":I
    .end local v9    # "endY":I
    .end local v10    # "i":I
    :cond_a
    invoke-virtual {v3}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 968
    return-void
.end method

.method public dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 840
    new-instance v0, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 841
    return-void
.end method
