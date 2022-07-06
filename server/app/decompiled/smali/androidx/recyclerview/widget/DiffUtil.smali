.class public Landroidx/recyclerview/widget/DiffUtil;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/DiffUtil$CenteredArray;,
        Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;,
        Landroidx/recyclerview/widget/DiffUtil$DiffResult;,
        Landroidx/recyclerview/widget/DiffUtil$Range;,
        Landroidx/recyclerview/widget/DiffUtil$Snake;,
        Landroidx/recyclerview/widget/DiffUtil$Diagonal;,
        Landroidx/recyclerview/widget/DiffUtil$ItemCallback;,
        Landroidx/recyclerview/widget/DiffUtil$Callback;
    }
.end annotation


# static fields
.field private static final DIAGONAL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroidx/recyclerview/widget/DiffUtil$Diagonal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$1;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method private static backward(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;I)Landroidx/recyclerview/widget/DiffUtil$Snake;
    .locals 11
    .param p0, "range"    # Landroidx/recyclerview/widget/DiffUtil$Range;
    .param p1, "cb"    # Landroidx/recyclerview/widget/DiffUtil$Callback;
    .param p2, "forward"    # Landroidx/recyclerview/widget/DiffUtil$CenteredArray;
    .param p3, "backward"    # Landroidx/recyclerview/widget/DiffUtil$CenteredArray;
    .param p4, "d"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v10

    sub-int/2addr v9, v10

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_2

    const/4 v0, 0x1

    .line 275
    .local v0, "checkForSnake":Z
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v10

    sub-int v1, v9, v10

    .line 278
    .local v1, "delta":I
    neg-int v3, p4

    .local v3, "k":I
    :goto_1
    if-gt v3, p4, :cond_7

    .line 287
    neg-int v9, p4

    if-eq v3, v9, :cond_0

    if-eq v3, p4, :cond_3

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p3, v9}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v9

    add-int/lit8 v10, v3, -0x1

    invoke-virtual {p3, v10}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 289
    :cond_0
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p3, v9}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v5

    .local v5, "startX":I
    move v7, v5

    .line 295
    .local v7, "x":I
    :goto_2
    iget v9, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v10, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    sub-int/2addr v10, v7

    sub-int/2addr v10, v3

    sub-int v8, v9, v10

    .line 296
    .local v8, "y":I
    if-eqz p4, :cond_1

    if-eq v7, v5, :cond_4

    :cond_1
    move v6, v8

    .line 298
    .local v6, "startY":I
    :goto_3
    iget v9, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    if-le v7, v9, :cond_5

    iget v9, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    if-le v8, v9, :cond_5

    add-int/lit8 v9, v7, -0x1

    add-int/lit8 v10, v8, -0x1

    .line 300
    invoke-virtual {p1, v9, v10}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 301
    add-int/lit8 v7, v7, -0x1

    .line 302
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 274
    .end local v0    # "checkForSnake":Z
    .end local v1    # "delta":I
    .end local v3    # "k":I
    .end local v5    # "startX":I
    .end local v6    # "startY":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 292
    .restart local v0    # "checkForSnake":Z
    .restart local v1    # "delta":I
    .restart local v3    # "k":I
    :cond_3
    add-int/lit8 v9, v3, -0x1

    invoke-virtual {p3, v9}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v5

    .line 293
    .restart local v5    # "startX":I
    add-int/lit8 v7, v5, -0x1

    .restart local v7    # "x":I
    goto :goto_2

    .line 296
    .restart local v8    # "y":I
    :cond_4
    add-int/lit8 v6, v8, 0x1

    goto :goto_3

    .line 305
    .restart local v6    # "startY":I
    :cond_5
    invoke-virtual {p3, v3, v7}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->set(II)V

    .line 306
    if-eqz v0, :cond_6

    .line 309
    sub-int v2, v1, v3

    .line 311
    .local v2, "forwardsK":I
    neg-int v9, p4

    if-lt v2, v9, :cond_6

    if-gt v2, p4, :cond_6

    .line 313
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v9

    if-lt v9, v7, :cond_6

    .line 315
    new-instance v4, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v4}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    .line 317
    .local v4, "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    iput v7, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    .line 318
    iput v8, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    .line 319
    iput v5, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    .line 320
    iput v6, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    .line 321
    const/4 v9, 0x1

    iput-boolean v9, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    .line 326
    .end local v2    # "forwardsK":I
    .end local v4    # "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    .end local v5    # "startX":I
    .end local v6    # "startY":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :goto_4
    return-object v4

    .line 278
    .restart local v5    # "startX":I
    .restart local v6    # "startY":I
    .restart local v7    # "x":I
    .restart local v8    # "y":I
    :cond_6
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 326
    .end local v5    # "startX":I
    .end local v6    # "startY":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_7
    const/4 v4, 0x0

    goto :goto_4
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 1
    .param p0, "cb"    # Landroidx/recyclerview/widget/DiffUtil$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    return-object v0
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 18
    .param p0, "cb"    # Landroidx/recyclerview/widget/DiffUtil$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "detectMoves"    # Z
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 124
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    move-result v12

    .line 125
    .local v12, "oldSize":I
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    move-result v11

    .line 127
    .local v11, "newSize":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v3, "diagonals":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$Diagonal;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v17, "stack":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$Range;>;"
    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$Range;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v12, v4, v11}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>(IIII)V

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    add-int v1, v12, v11

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v10, v1, 0x2

    .line 139
    .local v10, "max":I
    new-instance v8, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;

    mul-int/lit8 v1, v10, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v8, v1}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;-><init>(I)V

    .line 140
    .local v8, "forward":Landroidx/recyclerview/widget/DiffUtil$CenteredArray;
    new-instance v7, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;

    mul-int/lit8 v1, v10, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v7, v1}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;-><init>(I)V

    .line 143
    .local v7, "backward":Landroidx/recyclerview/widget/DiffUtil$CenteredArray;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v14, "rangePool":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$Range;>;"
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 145
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 146
    .local v13, "range":Landroidx/recyclerview/widget/DiffUtil$Range;
    move-object/from16 v0, p0

    invoke-static {v13, v0, v8, v7}, Landroidx/recyclerview/widget/DiffUtil;->midPoint(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;)Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-result-object v16

    .line 147
    .local v16, "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    if-eqz v16, :cond_2

    .line 149
    invoke-virtual/range {v16 .. v16}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v1

    if-lez v1, :cond_0

    .line 150
    invoke-virtual/range {v16 .. v16}, Landroidx/recyclerview/widget/DiffUtil$Snake;->toDiagonal()Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_0
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v9, Landroidx/recyclerview/widget/DiffUtil$Range;

    invoke-direct {v9}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>()V

    .line 155
    .local v9, "left":Landroidx/recyclerview/widget/DiffUtil$Range;
    :goto_1
    iget v1, v13, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iput v1, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 156
    iget v1, v13, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iput v1, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 157
    move-object/from16 v0, v16

    iget v1, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iput v1, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 158
    move-object/from16 v0, v16

    iget v1, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    iput v1, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 159
    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    move-object v15, v13

    .line 164
    .local v15, "right":Landroidx/recyclerview/widget/DiffUtil$Range;
    iget v1, v13, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iput v1, v15, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 165
    iget v1, v13, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iput v1, v15, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 166
    move-object/from16 v0, v16

    iget v1, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iput v1, v15, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 167
    move-object/from16 v0, v16

    iget v1, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    iput v1, v15, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 168
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    .end local v9    # "left":Landroidx/recyclerview/widget/DiffUtil$Range;
    .end local v15    # "right":Landroidx/recyclerview/widget/DiffUtil$Range;
    :cond_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 153
    invoke-interface {v14, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/DiffUtil$Range;

    move-object v9, v1

    goto :goto_1

    .line 170
    :cond_2
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    .end local v13    # "range":Landroidx/recyclerview/widget/DiffUtil$Range;
    .end local v16    # "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    :cond_3
    sget-object v1, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 177
    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 178
    invoke-virtual {v8}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->backingData()[I

    move-result-object v4

    invoke-virtual {v7}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->backingData()[I

    move-result-object v5

    move-object/from16 v2, p0

    move/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;-><init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[IZ)V

    .line 177
    return-object v1
.end method

.method private static forward(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;I)Landroidx/recyclerview/widget/DiffUtil$Snake;
    .locals 11
    .param p0, "range"    # Landroidx/recyclerview/widget/DiffUtil$Range;
    .param p1, "cb"    # Landroidx/recyclerview/widget/DiffUtil$Callback;
    .param p2, "forward"    # Landroidx/recyclerview/widget/DiffUtil$CenteredArray;
    .param p3, "backward"    # Landroidx/recyclerview/widget/DiffUtil$CenteredArray;
    .param p4, "d"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    rem-int/lit8 v9, v9, 0x2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    const/4 v1, 0x1

    .line 218
    .local v1, "checkForSnake":Z
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v10

    sub-int v2, v9, v10

    .line 219
    .local v2, "delta":I
    neg-int v3, p4

    .local v3, "k":I
    :goto_1
    if-gt v3, p4, :cond_7

    .line 226
    neg-int v9, p4

    if-eq v3, v9, :cond_0

    if-eq v3, p4, :cond_3

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p2, v9}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v9

    add-int/lit8 v10, v3, -0x1

    invoke-virtual {p2, v10}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v10

    if-le v9, v10, :cond_3

    .line 228
    :cond_0
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p2, v9}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v5

    .local v5, "startX":I
    move v7, v5

    .line 234
    .local v7, "x":I
    :goto_2
    iget v9, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iget v10, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    sub-int v10, v7, v10

    add-int/2addr v9, v10

    sub-int v8, v9, v3

    .line 235
    .local v8, "y":I
    if-eqz p4, :cond_1

    if-eq v7, v5, :cond_4

    :cond_1
    move v6, v8

    .line 237
    .local v6, "startY":I
    :goto_3
    iget v9, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    if-ge v7, v9, :cond_5

    iget v9, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    if-ge v8, v9, :cond_5

    .line 239
    invoke-virtual {p1, v7, v8}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 240
    add-int/lit8 v7, v7, 0x1

    .line 241
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 217
    .end local v1    # "checkForSnake":Z
    .end local v2    # "delta":I
    .end local v3    # "k":I
    .end local v5    # "startX":I
    .end local v6    # "startY":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 231
    .restart local v1    # "checkForSnake":Z
    .restart local v2    # "delta":I
    .restart local v3    # "k":I
    :cond_3
    add-int/lit8 v9, v3, -0x1

    invoke-virtual {p2, v9}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v5

    .line 232
    .restart local v5    # "startX":I
    add-int/lit8 v7, v5, 0x1

    .restart local v7    # "x":I
    goto :goto_2

    .line 235
    .restart local v8    # "y":I
    :cond_4
    add-int/lit8 v6, v8, -0x1

    goto :goto_3

    .line 244
    .restart local v6    # "startY":I
    :cond_5
    invoke-virtual {p2, v3, v7}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->set(II)V

    .line 245
    if-eqz v1, :cond_6

    .line 248
    sub-int v0, v2, v3

    .line 250
    .local v0, "backwardsK":I
    neg-int v9, p4

    add-int/lit8 v9, v9, 0x1

    if-lt v0, v9, :cond_6

    add-int/lit8 v9, p4, -0x1

    if-gt v0, v9, :cond_6

    .line 252
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v9

    if-gt v9, v7, :cond_6

    .line 254
    new-instance v4, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v4}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    .line 255
    .local v4, "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    iput v5, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    .line 256
    iput v6, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    .line 257
    iput v7, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    .line 258
    iput v8, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    .line 259
    const/4 v9, 0x0

    iput-boolean v9, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    .line 264
    .end local v0    # "backwardsK":I
    .end local v4    # "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    .end local v5    # "startX":I
    .end local v6    # "startY":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :goto_4
    return-object v4

    .line 219
    .restart local v5    # "startX":I
    .restart local v6    # "startY":I
    .restart local v7    # "x":I
    .restart local v8    # "y":I
    :cond_6
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 264
    .end local v5    # "startX":I
    .end local v6    # "startY":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_7
    const/4 v4, 0x0

    goto :goto_4
.end method

.method private static midPoint(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;)Landroidx/recyclerview/widget/DiffUtil$Snake;
    .locals 7
    .param p0, "range"    # Landroidx/recyclerview/widget/DiffUtil$Range;
    .param p1, "cb"    # Landroidx/recyclerview/widget/DiffUtil$Callback;
    .param p2, "forward"    # Landroidx/recyclerview/widget/DiffUtil$CenteredArray;
    .param p3, "backward"    # Landroidx/recyclerview/widget/DiffUtil$CenteredArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 191
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v4

    if-lt v4, v6, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v4

    if-ge v4, v6, :cond_2

    :cond_0
    move-object v2, v3

    .line 207
    :cond_1
    :goto_0
    return-object v2

    .line 194
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v1, v4, 0x2

    .line 195
    .local v1, "max":I
    iget v4, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    invoke-virtual {p2, v6, v4}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->set(II)V

    .line 196
    iget v4, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    invoke-virtual {p3, v6, v4}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->set(II)V

    .line 197
    const/4 v0, 0x0

    .local v0, "d":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 198
    invoke-static {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/DiffUtil;->forward(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;I)Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-result-object v2

    .line 199
    .local v2, "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    if-nez v2, :cond_1

    .line 202
    invoke-static {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/DiffUtil;->backward(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;I)Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-result-object v2

    .line 203
    if-nez v2, :cond_1

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2    # "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    :cond_3
    move-object v2, v3

    .line 207
    goto :goto_0
.end method
