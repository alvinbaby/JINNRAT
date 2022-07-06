.class Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database-collection@@16.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/collection/RBTreeSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;,
        Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final keyTranslator:Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator",
            "<TA;TB;>;"
        }
    .end annotation
.end field

.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TA;>;"
        }
    .end annotation
.end field

.field private leaf:Lcom/google/firebase/database/collection/LLRBValueNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/LLRBValueNode",
            "<TA;TC;>;"
        }
    .end annotation
.end field

.field private root:Lcom/google/firebase/database/collection/LLRBValueNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/LLRBValueNode",
            "<TA;TC;>;"
        }
    .end annotation
.end field

.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TB;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/Map;Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TA;>;",
            "Ljava/util/Map",
            "<TB;TC;>;",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator",
            "<TA;TB;>;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "this":Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;, "Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder<TA;TB;TC;>;"
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<TA;>;"
    .local p2, "values":Ljava/util/Map;, "Ljava/util/Map<TB;TC;>;"
    .local p3, "translator":Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;, "Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator<TA;TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p1, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->keys:Ljava/util/List;

    .line 294
    iput-object p2, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->values:Ljava/util/Map;

    .line 295
    iput-object p3, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->keyTranslator:Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;

    .line 296
    return-void
.end method

.method private buildBalancedTree(II)Lcom/google/firebase/database/collection/LLRBNode;
    .locals 8
    .param p1, "start"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/firebase/database/collection/LLRBNode",
            "<TA;TC;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;, "Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder<TA;TB;TC;>;"
    const/4 v7, 0x0

    .line 303
    if-nez p2, :cond_0

    .line 304
    invoke-static {}, Lcom/google/firebase/database/collection/LLRBEmptyNode;->getInstance()Lcom/google/firebase/database/collection/LLRBEmptyNode;

    move-result-object v5

    .line 314
    :goto_0
    return-object v5

    .line 305
    :cond_0
    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    .line 306
    iget-object v5, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->keys:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 307
    .local v1, "key":Ljava/lang/Object;, "TA;"
    new-instance v5, Lcom/google/firebase/database/collection/LLRBBlackValueNode;

    invoke-direct {p0, v1}, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v1, v6, v7, v7}, Lcom/google/firebase/database/collection/LLRBBlackValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/firebase/database/collection/LLRBNode;Lcom/google/firebase/database/collection/LLRBNode;)V

    goto :goto_0

    .line 309
    .end local v1    # "key":Ljava/lang/Object;, "TA;"
    :cond_1
    div-int/lit8 v0, p2, 0x2

    .line 310
    .local v0, "half":I
    add-int v3, p1, v0

    .line 311
    .local v3, "middle":I
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->buildBalancedTree(II)Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v2

    .line 312
    .local v2, "left":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TA;TC;>;"
    add-int/lit8 v5, v3, 0x1

    invoke-direct {p0, v5, v0}, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->buildBalancedTree(II)Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v4

    .line 313
    .local v4, "right":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TA;TC;>;"
    iget-object v5, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->keys:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 314
    .restart local v1    # "key":Ljava/lang/Object;, "TA;"
    new-instance v5, Lcom/google/firebase/database/collection/LLRBBlackValueNode;

    invoke-direct {p0, v1}, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v1, v6, v2, v4}, Lcom/google/firebase/database/collection/LLRBBlackValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/firebase/database/collection/LLRBNode;Lcom/google/firebase/database/collection/LLRBNode;)V

    goto :goto_0
.end method

.method public static buildFrom(Ljava/util/List;Ljava/util/Map;Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;Ljava/util/Comparator;)Lcom/google/firebase/database/collection/RBTreeSortedMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TA;>;",
            "Ljava/util/Map",
            "<TB;TC;>;",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator",
            "<TA;TB;>;",
            "Ljava/util/Comparator",
            "<TA;>;)",
            "Lcom/google/firebase/database/collection/RBTreeSortedMap",
            "<TA;TC;>;"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "keys":Ljava/util/List;, "Ljava/util/List<TA;>;"
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<TB;TC;>;"
    .local p2, "translator":Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;, "Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator<TA;TB;>;"
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TA;>;"
    new-instance v0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;-><init>(Ljava/util/List;Ljava/util/Map;Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;)V

    .line 342
    .local v0, "builder":Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;, "Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder<TA;TB;TC;>;"
    invoke-static {p0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 343
    new-instance v4, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;-><init>(I)V

    invoke-virtual {v4}, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 344
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 345
    .local v1, "index":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 346
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;

    .line 347
    .local v3, "next":Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;
    iget v4, v3, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;->chunkSize:I

    sub-int/2addr v1, v4

    .line 348
    iget-boolean v4, v3, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;->isOne:Z

    if-eqz v4, :cond_0

    .line 349
    sget-object v4, Lcom/google/firebase/database/collection/LLRBNode$Color;->BLACK:Lcom/google/firebase/database/collection/LLRBNode$Color;

    iget v5, v3, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;->chunkSize:I

    invoke-direct {v0, v4, v5, v1}, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->buildPennant(Lcom/google/firebase/database/collection/LLRBNode$Color;II)V

    goto :goto_0

    .line 351
    :cond_0
    sget-object v4, Lcom/google/firebase/database/collection/LLRBNode$Color;->BLACK:Lcom/google/firebase/database/collection/LLRBNode$Color;

    iget v5, v3, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;->chunkSize:I

    invoke-direct {v0, v4, v5, v1}, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->buildPennant(Lcom/google/firebase/database/collection/LLRBNode$Color;II)V

    .line 352
    iget v4, v3, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;->chunkSize:I

    sub-int/2addr v1, v4

    .line 353
    sget-object v4, Lcom/google/firebase/database/collection/LLRBNode$Color;->RED:Lcom/google/firebase/database/collection/LLRBNode$Color;

    iget v5, v3, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;->chunkSize:I

    invoke-direct {v0, v4, v5, v1}, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->buildPennant(Lcom/google/firebase/database/collection/LLRBNode$Color;II)V

    goto :goto_0

    .line 356
    .end local v3    # "next":Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;
    :cond_1
    new-instance v5, Lcom/google/firebase/database/collection/RBTreeSortedMap;

    .line 357
    iget-object v4, v0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->root:Lcom/google/firebase/database/collection/LLRBValueNode;

    if-nez v4, :cond_2

    invoke-static {}, Lcom/google/firebase/database/collection/LLRBEmptyNode;->getInstance()Lcom/google/firebase/database/collection/LLRBEmptyNode;

    move-result-object v4

    :goto_1
    const/4 v6, 0x0

    invoke-direct {v5, v4, p3, v6}, Lcom/google/firebase/database/collection/RBTreeSortedMap;-><init>(Lcom/google/firebase/database/collection/LLRBNode;Ljava/util/Comparator;Lcom/google/firebase/database/collection/RBTreeSortedMap$1;)V

    .line 356
    return-object v5

    .line 357
    :cond_2
    iget-object v4, v0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->root:Lcom/google/firebase/database/collection/LLRBValueNode;

    goto :goto_1
.end method

.method private buildPennant(Lcom/google/firebase/database/collection/LLRBNode$Color;II)V
    .locals 6
    .param p1, "color"    # Lcom/google/firebase/database/collection/LLRBNode$Color;
    .param p2, "chunkSize"    # I
    .param p3, "start"    # I

    .prologue
    .local p0, "this":Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;, "Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder<TA;TB;TC;>;"
    const/4 v5, 0x0

    .line 319
    add-int/lit8 v3, p3, 0x1

    add-int/lit8 v4, p2, -0x1

    invoke-direct {p0, v3, v4}, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->buildBalancedTree(II)Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v2

    .line 320
    .local v2, "treeRoot":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TA;TC;>;"
    iget-object v3, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->keys:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 322
    .local v0, "key":Ljava/lang/Object;, "TA;"
    sget-object v3, Lcom/google/firebase/database/collection/LLRBNode$Color;->RED:Lcom/google/firebase/database/collection/LLRBNode$Color;

    if-ne p1, v3, :cond_0

    .line 323
    new-instance v1, Lcom/google/firebase/database/collection/LLRBRedValueNode;

    invoke-direct {p0, v0}, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v0, v3, v5, v2}, Lcom/google/firebase/database/collection/LLRBRedValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/firebase/database/collection/LLRBNode;Lcom/google/firebase/database/collection/LLRBNode;)V

    .line 327
    .local v1, "node":Lcom/google/firebase/database/collection/LLRBValueNode;, "Lcom/google/firebase/database/collection/LLRBValueNode<TA;TC;>;"
    :goto_0
    iget-object v3, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->root:Lcom/google/firebase/database/collection/LLRBValueNode;

    if-nez v3, :cond_1

    .line 328
    iput-object v1, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->root:Lcom/google/firebase/database/collection/LLRBValueNode;

    .line 329
    iput-object v1, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->leaf:Lcom/google/firebase/database/collection/LLRBValueNode;

    .line 334
    :goto_1
    return-void

    .line 325
    .end local v1    # "node":Lcom/google/firebase/database/collection/LLRBValueNode;, "Lcom/google/firebase/database/collection/LLRBValueNode<TA;TC;>;"
    :cond_0
    new-instance v1, Lcom/google/firebase/database/collection/LLRBBlackValueNode;

    invoke-direct {p0, v0}, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v0, v3, v5, v2}, Lcom/google/firebase/database/collection/LLRBBlackValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/firebase/database/collection/LLRBNode;Lcom/google/firebase/database/collection/LLRBNode;)V

    .restart local v1    # "node":Lcom/google/firebase/database/collection/LLRBValueNode;, "Lcom/google/firebase/database/collection/LLRBValueNode<TA;TC;>;"
    goto :goto_0

    .line 331
    :cond_1
    iget-object v3, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->leaf:Lcom/google/firebase/database/collection/LLRBValueNode;

    invoke-virtual {v3, v1}, Lcom/google/firebase/database/collection/LLRBValueNode;->setLeft(Lcom/google/firebase/database/collection/LLRBNode;)V

    .line 332
    iput-object v1, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->leaf:Lcom/google/firebase/database/collection/LLRBValueNode;

    goto :goto_1
.end method

.method private getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TC;"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;, "Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder<TA;TB;TC;>;"
    .local p1, "key":Ljava/lang/Object;, "TA;"
    iget-object v0, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->values:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->keyTranslator:Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;

    invoke-interface {v1, p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
