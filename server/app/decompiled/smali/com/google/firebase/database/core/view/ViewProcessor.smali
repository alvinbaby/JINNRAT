.class public Lcom/google/firebase/database/core/view/ViewProcessor;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;,
        Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static NO_COMPLETE_SOURCE:Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;


# instance fields
.field private final filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/google/firebase/database/core/view/ViewProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/firebase/database/core/view/ViewProcessor;->$assertionsDisabled:Z

    .line 669
    new-instance v0, Lcom/google/firebase/database/core/view/ViewProcessor$1;

    invoke-direct {v0}, Lcom/google/firebase/database/core/view/ViewProcessor$1;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/view/ViewProcessor;->NO_COMPLETE_SOURCE:Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;

    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/firebase/database/core/view/filter/NodeFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 45
    return-void
.end method

.method private ackUserWrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .locals 15
    .param p1, "viewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "ackPath"    # Lcom/google/firebase/database/core/Path;
    .param p4, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p5, "optCompleteCache"    # Lcom/google/firebase/database/snapshot/Node;
    .param p6, "accumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/view/ViewCache;",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/firebase/database/core/WriteTreeRef;",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;",
            ")",
            "Lcom/google/firebase/database/core/view/ViewCache;"
        }
    .end annotation

    .prologue
    .line 534
    .local p3, "affectedTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/WriteTreeRef;->shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 585
    .end local p1    # "viewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :cond_0
    :goto_0
    return-object p1

    .line 539
    .restart local p1    # "viewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v8

    .line 543
    .local v8, "filterServerNode":Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v13

    .line 544
    .local v13, "serverCache":Lcom/google/firebase/database/core/view/CacheNode;
    invoke-virtual/range {p3 .. p3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 546
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v13}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v2

    if-nez v2, :cond_3

    .line 547
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForPath(Lcom/google/firebase/database/core/Path;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 551
    :cond_3
    invoke-virtual {v13}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    .line 548
    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    goto :goto_0

    .line 556
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 559
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v5

    .line 560
    .local v5, "changedChildren":Lcom/google/firebase/database/core/CompoundWrite;
    invoke-virtual {v13}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 561
    .local v10, "child":Lcom/google/firebase/database/snapshot/NamedNode;
    invoke-virtual {v10}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {v10}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v5

    .line 562
    goto :goto_1

    .end local v10    # "child":Lcom/google/firebase/database/snapshot/NamedNode;
    :cond_5
    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    .line 563
    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    goto :goto_0

    .line 576
    .end local v5    # "changedChildren":Lcom/google/firebase/database/core/CompoundWrite;
    :cond_6
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v5

    .line 577
    .restart local v5    # "changedChildren":Lcom/google/firebase/database/core/CompoundWrite;
    invoke-virtual/range {p3 .. p3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 578
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Ljava/lang/Boolean;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/firebase/database/core/Path;

    .line 579
    .local v12, "mergePath":Lcom/google/firebase/database/core/Path;
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v14

    .line 580
    .local v14, "serverCachePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {v13, v14}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForPath(Lcom/google/firebase/database/core/Path;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 582
    invoke-virtual {v13}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, v14}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-virtual {v5, v12, v3}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v5

    goto :goto_2

    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Ljava/lang/Boolean;>;"
    .end local v12    # "mergePath":Lcom/google/firebase/database/core/Path;
    .end local v14    # "serverCachePath":Lcom/google/firebase/database/core/Path;
    :cond_8
    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    .line 585
    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    goto/16 :goto_0
.end method

.method private applyServerMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .locals 19
    .param p1, "viewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "path"    # Lcom/google/firebase/database/core/Path;
    .param p3, "changedChildren"    # Lcom/google/firebase/database/core/CompoundWrite;
    .param p4, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p5, "serverCache"    # Lcom/google/firebase/database/snapshot/Node;
    .param p6, "filterServerNode"    # Z
    .param p7, "accumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .prologue
    .line 466
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 524
    .end local p1    # "viewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :goto_0
    return-object p1

    .line 477
    .restart local p1    # "viewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :cond_0
    move-object/from16 v3, p1

    .line 478
    .local v3, "curViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    sget-boolean v2, Lcom/google/firebase/database/core/view/ViewProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/google/firebase/database/core/CompoundWrite;->rootWrite()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    const-string v4, "Can\'t have a merge that is an overwrite"

    invoke-direct {v2, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 480
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 481
    move-object/from16 v10, p3

    .line 485
    .local v10, "actualMerge":Lcom/google/firebase/database/core/CompoundWrite;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v17

    .line 486
    .local v17, "serverNode":Lcom/google/firebase/database/snapshot/Node;
    invoke-virtual {v10}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrites()Ljava/util/Map;

    move-result-object v12

    .line 487
    .local v12, "childCompoundWrites":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/CompoundWrite;>;"
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_2
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 488
    .local v14, "childMerge":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/CompoundWrite;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 489
    .local v13, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 490
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v16

    .line 491
    .local v16, "serverChild":Lcom/google/firebase/database/snapshot/Node;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/CompoundWrite;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    .line 492
    .local v5, "newChild":Lcom/google/firebase/database/snapshot/Node;
    new-instance v4, Lcom/google/firebase/database/core/Path;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/firebase/database/snapshot/ChildKey;

    const/4 v6, 0x0

    aput-object v13, v2, v6

    invoke-direct {v4, v2}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;)V

    move-object/from16 v2, p0

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 493
    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v3

    goto :goto_2

    .line 483
    .end local v5    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v10    # "actualMerge":Lcom/google/firebase/database/core/CompoundWrite;
    .end local v12    # "childCompoundWrites":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/CompoundWrite;>;"
    .end local v13    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .end local v14    # "childMerge":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/CompoundWrite;>;"
    .end local v16    # "serverChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v17    # "serverNode":Lcom/google/firebase/database/snapshot/Node;
    :cond_3
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/database/core/CompoundWrite;->addWrites(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v10

    .restart local v10    # "actualMerge":Lcom/google/firebase/database/core/CompoundWrite;
    goto :goto_1

    .line 503
    .restart local v12    # "childCompoundWrites":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/CompoundWrite;>;"
    .restart local v17    # "serverNode":Lcom/google/firebase/database/snapshot/Node;
    :cond_4
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_5
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 504
    .restart local v14    # "childMerge":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/CompoundWrite;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 505
    .restart local v13    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/database/core/CompoundWrite;

    .line 507
    .local v11, "childCompoundWrite":Lcom/google/firebase/database/core/CompoundWrite;
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 508
    invoke-virtual {v11}, Lcom/google/firebase/database/core/CompoundWrite;->rootWrite()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    if-nez v2, :cond_6

    const/4 v15, 0x1

    .line 509
    .local v15, "isUnknownDeepMerge":Z
    :goto_4
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v2

    if-nez v2, :cond_5

    if-nez v15, :cond_5

    .line 510
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v16

    .line 511
    .restart local v16    # "serverChild":Lcom/google/firebase/database/snapshot/Node;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/CompoundWrite;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    .line 512
    .restart local v5    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    new-instance v4, Lcom/google/firebase/database/core/Path;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/firebase/database/snapshot/ChildKey;

    const/4 v6, 0x0

    aput-object v13, v2, v6

    invoke-direct {v4, v2}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;)V

    move-object/from16 v2, p0

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 513
    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v3

    goto :goto_3

    .line 508
    .end local v5    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v15    # "isUnknownDeepMerge":Z
    .end local v16    # "serverChild":Lcom/google/firebase/database/snapshot/Node;
    :cond_6
    const/4 v15, 0x0

    goto :goto_4

    .end local v11    # "childCompoundWrite":Lcom/google/firebase/database/core/CompoundWrite;
    .end local v13    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .end local v14    # "childMerge":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/CompoundWrite;>;"
    :cond_7
    move-object/from16 p1, v3

    .line 524
    goto/16 :goto_0
.end method

.method private applyServerOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .locals 19
    .param p1, "oldViewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "changePath"    # Lcom/google/firebase/database/core/Path;
    .param p3, "changedSnap"    # Lcom/google/firebase/database/snapshot/Node;
    .param p4, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p5, "optCompleteCache"    # Lcom/google/firebase/database/snapshot/Node;
    .param p6, "filterServerNode"    # Z
    .param p7, "accumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .prologue
    .line 286
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v17

    .line 288
    .local v17, "oldServerSnap":Lcom/google/firebase/database/core/view/CacheNode;
    if-eqz p6, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 289
    .local v2, "serverFilter":Lcom/google/firebase/database/core/view/filter/NodeFilter;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 292
    invoke-virtual/range {v17 .. v17}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v3

    .line 293
    invoke-interface {v2}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-static {v0, v7}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v7

    const/4 v9, 0x0

    .line 291
    invoke-interface {v2, v3, v7, v9}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v15

    .line 331
    .local v15, "newServerCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_0
    const/4 v3, 0x1

    .line 332
    :goto_2
    invoke-interface {v2}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v7

    .line 329
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v3, v7}, Lcom/google/firebase/database/core/view/ViewCache;->updateServerSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v8

    .line 333
    .local v8, "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    new-instance v11, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v11, v0, v8, v1}, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;-><init>(Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/Node;)V

    .local v11, "source":Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;
    move-object/from16 v7, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move-object/from16 v12, p7

    .line 335
    invoke-direct/range {v7 .. v12}, Lcom/google/firebase/database/core/view/ViewProcessor;->generateEventCacheAfterServerEvent(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    .end local v8    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .end local v11    # "source":Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;
    .end local v15    # "newServerCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    .end local p1    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :cond_1
    return-object p1

    .line 288
    .end local v2    # "serverFilter":Lcom/google/firebase/database/core/view/filter/NodeFilter;
    .restart local p1    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v3}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndexedFilter()Lcom/google/firebase/database/core/view/filter/NodeFilter;

    move-result-object v2

    goto :goto_0

    .line 295
    .restart local v2    # "serverFilter":Lcom/google/firebase/database/core/view/filter/NodeFilter;
    :cond_3
    invoke-interface {v2}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual/range {v17 .. v17}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v3

    if-nez v3, :cond_5

    .line 298
    sget-boolean v3, Lcom/google/firebase/database/core/view/ViewProcessor;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    const-string v7, "An empty path should have been caught in the other branch"

    invoke-direct {v3, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 299
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v4

    .line 300
    .local v4, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v18

    .line 302
    .local v18, "updatePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual/range {v17 .. v17}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-interface {v3, v0, v1}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v14

    .line 303
    .local v14, "newChild":Lcom/google/firebase/database/snapshot/Node;
    invoke-virtual/range {v17 .. v17}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v3

    invoke-virtual {v3, v4, v14}, Lcom/google/firebase/database/snapshot/IndexedNode;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v16

    .line 305
    .local v16, "newServerNode":Lcom/google/firebase/database/snapshot/IndexedNode;
    invoke-virtual/range {v17 .. v17}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v3

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0, v7}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v15

    .line 306
    .restart local v15    # "newServerCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    goto :goto_1

    .line 307
    .end local v4    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .end local v14    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v15    # "newServerCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    .end local v16    # "newServerNode":Lcom/google/firebase/database/snapshot/IndexedNode;
    .end local v18    # "updatePath":Lcom/google/firebase/database/core/Path;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v4

    .line 308
    .restart local v4    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForPath(Lcom/google/firebase/database/core/Path;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v3

    const/4 v7, 0x1

    if-gt v3, v7, :cond_1

    .line 312
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v6

    .line 313
    .local v6, "childChangePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual/range {v17 .. v17}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v13

    .line 314
    .local v13, "childNode":Lcom/google/firebase/database/snapshot/Node;
    move-object/from16 v0, p3

    invoke-interface {v13, v6, v0}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    .line 315
    .local v5, "newChildNode":Lcom/google/firebase/database/snapshot/Node;
    invoke-virtual {v4}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 316
    invoke-virtual/range {v17 .. v17}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updatePriority(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v15

    .restart local v15    # "newServerCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    goto/16 :goto_1

    .line 320
    .end local v15    # "newServerCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_7
    invoke-virtual/range {v17 .. v17}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v3

    sget-object v7, Lcom/google/firebase/database/core/view/ViewProcessor;->NO_COMPLETE_SOURCE:Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;

    const/4 v8, 0x0

    .line 319
    invoke-interface/range {v2 .. v8}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v15

    .restart local v15    # "newServerCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    goto/16 :goto_1

    .line 331
    .end local v4    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .end local v5    # "newChildNode":Lcom/google/firebase/database/snapshot/Node;
    .end local v6    # "childChangePath":Lcom/google/firebase/database/core/Path;
    .end local v13    # "childNode":Lcom/google/firebase/database/snapshot/Node;
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method private applyUserMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .locals 9
    .param p1, "viewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "path"    # Lcom/google/firebase/database/core/Path;
    .param p3, "changedChildren"    # Lcom/google/firebase/database/core/CompoundWrite;
    .param p4, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p5, "serverCache"    # Lcom/google/firebase/database/snapshot/Node;
    .param p6, "accumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .prologue
    .line 424
    sget-boolean v0, Lcom/google/firebase/database/core/view/ViewProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/google/firebase/database/core/CompoundWrite;->rootWrite()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v3, "Can\'t have a merge that is an overwrite"

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 425
    :cond_0
    move-object v1, p1

    .line 426
    .local v1, "currentViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    invoke-virtual {p3}, Lcom/google/firebase/database/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 427
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/Path;

    invoke-virtual {p2, v0}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 428
    .local v2, "writePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {v2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/firebase/database/core/view/ViewProcessor;->cacheHasChild(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/snapshot/Node;

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 430
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyUserOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v1

    goto :goto_0

    .line 440
    .end local v2    # "writePath":Lcom/google/firebase/database/core/Path;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    :cond_2
    invoke-virtual {p3}, Lcom/google/firebase/database/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 441
    .restart local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/Path;

    invoke-virtual {p2, v0}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 442
    .restart local v2    # "writePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {v2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/firebase/database/core/view/ViewProcessor;->cacheHasChild(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 447
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/snapshot/Node;

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 444
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyUserOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v1

    goto :goto_1

    .line 453
    .end local v2    # "writePath":Lcom/google/firebase/database/core/Path;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    :cond_4
    return-object v1
.end method

.method private applyUserOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .locals 17
    .param p1, "oldViewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "changePath"    # Lcom/google/firebase/database/core/Path;
    .param p3, "changedSnap"    # Lcom/google/firebase/database/snapshot/Node;
    .param p4, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p5, "optCompleteCache"    # Lcom/google/firebase/database/snapshot/Node;
    .param p6, "accumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .prologue
    .line 346
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v16

    .line 348
    .local v16, "oldEventSnap":Lcom/google/firebase/database/core/view/CacheNode;
    new-instance v8, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v8, v0, v1, v2}, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;-><init>(Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/Node;)V

    .line 350
    .local v8, "source":Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v3}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v13

    .line 352
    .local v13, "newIndexed":Lcom/google/firebase/database/snapshot/IndexedNode;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 354
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    .line 353
    move-object/from16 v0, p6

    invoke-interface {v3, v4, v13, v0}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v11

    .line 355
    .local v11, "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v4}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v3, v4}, Lcom/google/firebase/database/core/view/ViewCache;->updateEventSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v14

    .line 404
    .end local v11    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    .end local v13    # "newIndexed":Lcom/google/firebase/database/snapshot/IndexedNode;
    .local v14, "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :goto_0
    return-object v14

    .line 357
    .end local v14    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v5

    .line 358
    .local v5, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-virtual {v5}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 360
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-interface {v3, v4, v0}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updatePriority(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v11

    .line 363
    .restart local v11    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    invoke-virtual/range {v16 .. v16}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v4

    .line 362
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v3, v4}, Lcom/google/firebase/database/core/view/ViewCache;->updateEventSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v14

    .line 364
    .restart local v14    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    goto :goto_0

    .line 365
    .end local v11    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    .end local v14    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v7

    .line 366
    .local v7, "childChangePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual/range {v16 .. v16}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v15

    .line 368
    .local v15, "oldChild":Lcom/google/firebase/database/snapshot/Node;
    invoke-virtual {v7}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 370
    move-object/from16 v6, p3

    .line 387
    .local v6, "newChild":Lcom/google/firebase/database/snapshot/Node;
    :goto_1
    invoke-virtual {v15, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 390
    invoke-virtual/range {v16 .. v16}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    move-object/from16 v9, p6

    .line 389
    invoke-interface/range {v3 .. v9}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v12

    .line 398
    .local v12, "newEventSnap":Lcom/google/firebase/database/snapshot/IndexedNode;
    invoke-virtual/range {v16 .. v16}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v4}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v4

    .line 397
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v3, v4}, Lcom/google/firebase/database/core/view/ViewCache;->updateEventSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v14

    .line 399
    .restart local v14    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    goto :goto_0

    .line 372
    .end local v6    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v12    # "newEventSnap":Lcom/google/firebase/database/snapshot/IndexedNode;
    .end local v14    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :cond_2
    invoke-interface {v8, v5}, Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;->getCompleteChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v10

    .line 373
    .local v10, "childNode":Lcom/google/firebase/database/snapshot/Node;
    if-eqz v10, :cond_4

    .line 374
    invoke-virtual {v7}, Lcom/google/firebase/database/core/Path;->getBack()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 375
    invoke-virtual {v7}, Lcom/google/firebase/database/core/Path;->getParent()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    invoke-interface {v10, v3}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 378
    move-object v6, v10

    .restart local v6    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_1

    .line 380
    .end local v6    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    :cond_3
    move-object/from16 v0, p3

    invoke-interface {v10, v7, v0}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v6

    .restart local v6    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_1

    .line 384
    .end local v6    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    :cond_4
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v6

    .restart local v6    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_1

    .line 400
    .end local v10    # "childNode":Lcom/google/firebase/database/snapshot/Node;
    :cond_5
    move-object/from16 v14, p1

    .restart local v14    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    goto/16 :goto_0
.end method

.method private static cacheHasChild(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/ChildKey;)Z
    .locals 1
    .param p0, "viewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p1, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v0

    return v0
.end method

.method private generateEventCacheAfterServerEvent(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .locals 20
    .param p1, "viewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "changePath"    # Lcom/google/firebase/database/core/Path;
    .param p3, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p4, "source"    # Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;
    .param p5, "accumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .prologue
    .line 191
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v16

    .line 192
    .local v16, "oldEventSnap":Lcom/google/firebase/database/core/view/CacheNode;
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/WriteTreeRef;->shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 271
    .end local p1    # "viewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :goto_0
    return-object p1

    .line 197
    .restart local p1    # "viewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 199
    sget-boolean v3, Lcom/google/firebase/database/core/view/ViewProcessor;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "If change path is empty, we must have complete server data"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 202
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteServerSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v17

    .line 208
    .local v17, "serverCache":Lcom/google/firebase/database/snapshot/Node;
    move-object/from16 v0, v17

    instance-of v3, v0, Lcom/google/firebase/database/snapshot/ChildrenNode;

    if-eqz v3, :cond_3

    move-object/from16 v10, v17

    .line 209
    .local v10, "completeChildren":Lcom/google/firebase/database/snapshot/Node;
    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventChildren(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v14

    .line 214
    .end local v10    # "completeChildren":Lcom/google/firebase/database/snapshot/Node;
    .end local v17    # "serverCache":Lcom/google/firebase/database/snapshot/Node;
    .local v14, "nodeWithLocalWrites":Lcom/google/firebase/database/snapshot/Node;
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v3}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v12

    .line 215
    .local v12, "indexedNode":Lcom/google/firebase/database/snapshot/IndexedNode;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 217
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    .line 216
    move-object/from16 v0, p5

    invoke-interface {v3, v4, v12, v0}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v13

    .line 273
    .end local v12    # "indexedNode":Lcom/google/firebase/database/snapshot/IndexedNode;
    .end local v14    # "nodeWithLocalWrites":Lcom/google/firebase/database/snapshot/Node;
    .local v13, "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_2
    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 274
    invoke-interface {v4}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v4

    .line 271
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v3, v4}, Lcom/google/firebase/database/core/view/ViewCache;->updateEventSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    goto :goto_0

    .line 208
    .end local v13    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    .restart local v17    # "serverCache":Lcom/google/firebase/database/snapshot/Node;
    :cond_3
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v10

    goto :goto_1

    .line 212
    .end local v17    # "serverCache":Lcom/google/firebase/database/snapshot/Node;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteServerSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v14

    .restart local v14    # "nodeWithLocalWrites":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_2

    .line 219
    .end local v14    # "nodeWithLocalWrites":Lcom/google/firebase/database/snapshot/Node;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v5

    .line 220
    .local v5, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-virtual {v5}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 221
    sget-boolean v3, Lcom/google/firebase/database/core/view/ViewProcessor;->$assertionsDisabled:Z

    if-nez v3, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Can\'t have a priority with additional path components"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 222
    :cond_6
    invoke-virtual/range {v16 .. v16}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v15

    .line 223
    .local v15, "oldEventNode":Lcom/google/firebase/database/snapshot/Node;
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v18

    .line 226
    .local v18, "serverNode":Lcom/google/firebase/database/snapshot/Node;
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v15, v2}, Lcom/google/firebase/database/core/WriteTreeRef;->calcEventCacheAfterServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v19

    .line 227
    .local v19, "updatedPriority":Lcom/google/firebase/database/snapshot/Node;
    if-eqz v19, :cond_7

    .line 228
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 229
    invoke-virtual/range {v16 .. v16}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-interface {v3, v4, v0}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updatePriority(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v13

    .restart local v13    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    goto :goto_3

    .line 232
    .end local v13    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v13

    .restart local v13    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    goto :goto_3

    .line 235
    .end local v13    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    .end local v15    # "oldEventNode":Lcom/google/firebase/database/snapshot/Node;
    .end local v18    # "serverNode":Lcom/google/firebase/database/snapshot/Node;
    .end local v19    # "updatedPriority":Lcom/google/firebase/database/snapshot/Node;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v7

    .line 238
    .local v7, "childChangePath":Lcom/google/firebase/database/core/Path;
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 239
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v18

    .line 242
    .restart local v18    # "serverNode":Lcom/google/firebase/database/snapshot/Node;
    invoke-virtual/range {v16 .. v16}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    .line 241
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/firebase/database/core/WriteTreeRef;->calcEventCacheAfterServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v11

    .line 243
    .local v11, "eventChildUpdate":Lcom/google/firebase/database/snapshot/Node;
    if-eqz v11, :cond_9

    .line 246
    invoke-virtual/range {v16 .. v16}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    .line 247
    invoke-interface {v3, v5}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    .line 248
    invoke-interface {v3, v7, v11}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v6

    .line 256
    .end local v11    # "eventChildUpdate":Lcom/google/firebase/database/snapshot/Node;
    .end local v18    # "serverNode":Lcom/google/firebase/database/snapshot/Node;
    .local v6, "newEventChild":Lcom/google/firebase/database/snapshot/Node;
    :goto_5
    if-eqz v6, :cond_b

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 259
    invoke-virtual/range {v16 .. v16}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 258
    invoke-interface/range {v3 .. v9}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v13

    .restart local v13    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    goto/16 :goto_3

    .line 251
    .end local v6    # "newEventChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v13    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    .restart local v11    # "eventChildUpdate":Lcom/google/firebase/database/snapshot/Node;
    .restart local v18    # "serverNode":Lcom/google/firebase/database/snapshot/Node;
    :cond_9
    invoke-virtual/range {v16 .. v16}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v6

    .restart local v6    # "newEventChild":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_5

    .line 254
    .end local v6    # "newEventChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v11    # "eventChildUpdate":Lcom/google/firebase/database/snapshot/Node;
    .end local v18    # "serverNode":Lcom/google/firebase/database/snapshot/Node;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v3}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/view/CacheNode;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v6

    .restart local v6    # "newEventChild":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_5

    .line 267
    :cond_b
    invoke-virtual/range {v16 .. v16}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v13

    .restart local v13    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    goto/16 :goto_3

    .line 273
    .end local v5    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .end local v6    # "newEventChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v7    # "childChangePath":Lcom/google/firebase/database/core/Path;
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_4
.end method

.method private listenComplete(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .locals 7
    .param p1, "viewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "path"    # Lcom/google/firebase/database/core/Path;
    .param p3, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p4, "serverCache"    # Lcom/google/firebase/database/snapshot/Node;
    .param p5, "accumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .prologue
    .line 658
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v6

    .line 661
    .local v6, "oldServerNode":Lcom/google/firebase/database/core/view/CacheNode;
    invoke-virtual {v6}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    .line 662
    invoke-virtual {v6}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 663
    :goto_0
    invoke-virtual {v6}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v3

    .line 660
    invoke-virtual {p1, v2, v0, v3}, Lcom/google/firebase/database/core/view/ViewCache;->updateServerSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v1

    .line 664
    .local v1, "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    sget-object v4, Lcom/google/firebase/database/core/view/ViewProcessor;->NO_COMPLETE_SOURCE:Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/ViewProcessor;->generateEventCacheAfterServerEvent(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v0

    return-object v0

    .line 662
    .end local v1    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeAddValueEvent(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/view/ViewCache;Ljava/util/List;)V
    .locals 4
    .param p1, "oldViewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "newViewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/view/ViewCache;",
            "Lcom/google/firebase/database/core/view/ViewCache;",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/view/Change;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Change;>;"
    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    .line 171
    .local v0, "eventSnap":Lcom/google/firebase/database/core/view/CacheNode;
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 172
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    const/4 v1, 0x1

    .line 173
    .local v1, "isLeafOrEmpty":Z
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteEventSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    .line 178
    invoke-interface {v2}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    .line 179
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteEventSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 180
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/database/core/view/Change;->valueChange(Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v1    # "isLeafOrEmpty":Z
    :cond_3
    return-void

    .line 172
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyOperation(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;
    .locals 24
    .param p1, "oldViewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "operation"    # Lcom/google/firebase/database/core/operation/Operation;
    .param p3, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p4, "optCompleteCache"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 63
    new-instance v10, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    invoke-direct {v10}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;-><init>()V

    .line 65
    .local v10, "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    sget-object v4, Lcom/google/firebase/database/core/view/ViewProcessor$2;->$SwitchMap$com$google$firebase$database$core$operation$Operation$OperationType:[I

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/operation/Operation;->getType()Lcom/google/firebase/database/core/operation/Operation$OperationType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/database/core/operation/Operation$OperationType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 160
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown operation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/operation/Operation;->getType()Lcom/google/firebase/database/core/operation/Operation$OperationType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :pswitch_0
    move-object/from16 v23, p2

    .line 68
    check-cast v23, Lcom/google/firebase/database/core/operation/Overwrite;

    .line 69
    .local v23, "overwrite":Lcom/google/firebase/database/core/operation/Overwrite;
    invoke-virtual/range {v23 .. v23}, Lcom/google/firebase/database/core/operation/Overwrite;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/core/operation/OperationSource;->isFromUser()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    invoke-virtual/range {v23 .. v23}, Lcom/google/firebase/database/core/operation/Overwrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v6

    .line 74
    invoke-virtual/range {v23 .. v23}, Lcom/google/firebase/database/core/operation/Overwrite;->getSnapshot()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v7

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 71
    invoke-direct/range {v4 .. v10}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyUserOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v22

    .line 163
    .end local v23    # "overwrite":Lcom/google/firebase/database/core/operation/Overwrite;
    .local v22, "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :goto_0
    new-instance v20, Ljava/util/ArrayList;

    invoke-virtual {v10}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->getChanges()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 164
    .local v20, "changes":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Change;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/database/core/view/ViewProcessor;->maybeAddValueEvent(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/view/ViewCache;Ljava/util/List;)V

    .line 165
    new-instance v4, Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;-><init>(Lcom/google/firebase/database/core/view/ViewCache;Ljava/util/List;)V

    return-object v4

    .line 79
    .end local v20    # "changes":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Change;>;"
    .end local v22    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .restart local v23    # "overwrite":Lcom/google/firebase/database/core/operation/Overwrite;
    :cond_0
    sget-boolean v4, Lcom/google/firebase/database/core/view/ViewProcessor;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    invoke-virtual/range {v23 .. v23}, Lcom/google/firebase/database/core/operation/Overwrite;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/core/operation/OperationSource;->isFromServer()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 84
    :cond_1
    invoke-virtual/range {v23 .. v23}, Lcom/google/firebase/database/core/operation/Overwrite;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/core/operation/OperationSource;->isTagged()Z

    move-result v4

    if-nez v4, :cond_2

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 86
    invoke-virtual/range {v23 .. v23}, Lcom/google/firebase/database/core/operation/Overwrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const/16 v17, 0x1

    .line 90
    .local v17, "filterServerNode":Z
    :goto_1
    invoke-virtual/range {v23 .. v23}, Lcom/google/firebase/database/core/operation/Overwrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v13

    .line 91
    invoke-virtual/range {v23 .. v23}, Lcom/google/firebase/database/core/operation/Overwrite;->getSnapshot()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v14

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v18, v10

    .line 88
    invoke-direct/range {v11 .. v18}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v22

    .line 97
    .restart local v22    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    goto :goto_0

    .line 86
    .end local v17    # "filterServerNode":Z
    .end local v22    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :cond_3
    const/16 v17, 0x0

    goto :goto_1

    .end local v23    # "overwrite":Lcom/google/firebase/database/core/operation/Overwrite;
    :pswitch_1
    move-object/from16 v21, p2

    .line 101
    check-cast v21, Lcom/google/firebase/database/core/operation/Merge;

    .line 102
    .local v21, "merge":Lcom/google/firebase/database/core/operation/Merge;
    invoke-virtual/range {v21 .. v21}, Lcom/google/firebase/database/core/operation/Merge;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/core/operation/OperationSource;->isFromUser()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 106
    invoke-virtual/range {v21 .. v21}, Lcom/google/firebase/database/core/operation/Merge;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v6

    .line 107
    invoke-virtual/range {v21 .. v21}, Lcom/google/firebase/database/core/operation/Merge;->getChildren()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v7

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 104
    invoke-direct/range {v4 .. v10}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyUserMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v22

    .restart local v22    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    goto/16 :goto_0

    .line 112
    .end local v22    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :cond_4
    sget-boolean v4, Lcom/google/firebase/database/core/view/ViewProcessor;->$assertionsDisabled:Z

    if-nez v4, :cond_5

    invoke-virtual/range {v21 .. v21}, Lcom/google/firebase/database/core/operation/Merge;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/core/operation/OperationSource;->isFromServer()Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 115
    :cond_5
    invoke-virtual/range {v21 .. v21}, Lcom/google/firebase/database/core/operation/Merge;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/core/operation/OperationSource;->isTagged()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    const/16 v17, 0x1

    .line 119
    .restart local v17    # "filterServerNode":Z
    :goto_2
    invoke-virtual/range {v21 .. v21}, Lcom/google/firebase/database/core/operation/Merge;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v13

    .line 120
    invoke-virtual/range {v21 .. v21}, Lcom/google/firebase/database/core/operation/Merge;->getChildren()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v14

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v18, v10

    .line 117
    invoke-direct/range {v11 .. v18}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v22

    .line 126
    .restart local v22    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    goto/16 :goto_0

    .line 115
    .end local v17    # "filterServerNode":Z
    .end local v22    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :cond_7
    const/16 v17, 0x0

    goto :goto_2

    .end local v21    # "merge":Lcom/google/firebase/database/core/operation/Merge;
    :pswitch_2
    move-object/from16 v19, p2

    .line 130
    check-cast v19, Lcom/google/firebase/database/core/operation/AckUserWrite;

    .line 131
    .local v19, "ackUserWrite":Lcom/google/firebase/database/core/operation/AckUserWrite;
    invoke-virtual/range {v19 .. v19}, Lcom/google/firebase/database/core/operation/AckUserWrite;->isRevert()Z

    move-result v4

    if-nez v4, :cond_8

    .line 135
    invoke-virtual/range {v19 .. v19}, Lcom/google/firebase/database/core/operation/AckUserWrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v6

    .line 136
    invoke-virtual/range {v19 .. v19}, Lcom/google/firebase/database/core/operation/AckUserWrite;->getAffectedTree()Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v7

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 133
    invoke-direct/range {v4 .. v10}, Lcom/google/firebase/database/core/view/ViewProcessor;->ackUserWrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v22

    .restart local v22    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    goto/16 :goto_0

    .line 144
    .end local v22    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :cond_8
    invoke-virtual/range {v19 .. v19}, Lcom/google/firebase/database/core/operation/AckUserWrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v7

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 142
    invoke-virtual/range {v5 .. v10}, Lcom/google/firebase/database/core/view/ViewProcessor;->revertUserWrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v22

    .line 149
    .restart local v22    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    goto/16 :goto_0

    .line 155
    .end local v19    # "ackUserWrite":Lcom/google/firebase/database/core/operation/AckUserWrite;
    .end local v22    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/operation/Operation;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v7

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 154
    invoke-direct/range {v5 .. v10}, Lcom/google/firebase/database/core/view/ViewProcessor;->listenComplete(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v22

    .line 156
    .restart local v22    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    goto/16 :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public revertUserWrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .locals 20
    .param p1, "viewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "path"    # Lcom/google/firebase/database/core/Path;
    .param p3, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p4, "optCompleteServerCache"    # Lcom/google/firebase/database/snapshot/Node;
    .param p5, "accumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .prologue
    .line 602
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/WriteTreeRef;->shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 648
    .end local p1    # "viewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :goto_0
    return-object p1

    .line 605
    .restart local p1    # "viewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :cond_0
    new-instance v8, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v8, v0, v1, v2}, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;-><init>(Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/Node;)V

    .line 607
    .local v8, "source":Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    .line 609
    .local v4, "oldEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 611
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 612
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteServerSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v19

    .line 616
    .local v19, "newNode":Lcom/google/firebase/database/snapshot/Node;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v3}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v17

    .line 617
    .local v17, "indexedNode":Lcom/google/firebase/database/snapshot/IndexedNode;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-interface {v3, v4, v0, v1}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v18

    .line 646
    .end local v17    # "indexedNode":Lcom/google/firebase/database/snapshot/IndexedNode;
    .end local v19    # "newNode":Lcom/google/firebase/database/snapshot/Node;
    .local v18, "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_2
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    .line 647
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/google/firebase/database/core/WriteTreeRef;->shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    if-eqz v3, :cond_9

    :cond_3
    const/16 v16, 0x1

    .line 648
    .local v16, "complete":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v3}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v3

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/firebase/database/core/view/ViewCache;->updateEventSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    goto :goto_0

    .line 614
    .end local v16    # "complete":Z
    .end local v18    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventChildren(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v19

    .restart local v19    # "newNode":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_1

    .line 619
    .end local v19    # "newNode":Lcom/google/firebase/database/snapshot/Node;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v5

    .line 620
    .local v5, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v3}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/view/CacheNode;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v6

    .line 621
    .local v6, "newChild":Lcom/google/firebase/database/snapshot/Node;
    if-nez v6, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 622
    invoke-virtual {v4}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v6

    .line 624
    :cond_6
    if-eqz v6, :cond_7

    .line 625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 627
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v7

    move-object/from16 v9, p5

    .line 626
    invoke-interface/range {v3 .. v9}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v18

    .line 636
    .restart local v18    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :goto_4
    invoke-virtual/range {v18 .. v18}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 638
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteServerSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v16

    .line 639
    .local v16, "complete":Lcom/google/firebase/database/snapshot/Node;
    invoke-interface/range {v16 .. v16}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 640
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v3}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v17

    .line 641
    .restart local v17    # "indexedNode":Lcom/google/firebase/database/snapshot/IndexedNode;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, p5

    invoke-interface {v3, v0, v1, v2}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v18

    goto/16 :goto_2

    .line 628
    .end local v16    # "complete":Lcom/google/firebase/database/snapshot/Node;
    .end local v17    # "indexedNode":Lcom/google/firebase/database/snapshot/IndexedNode;
    .end local v18    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_7
    if-nez v6, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 630
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 632
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v13

    move-object v10, v4

    move-object v11, v5

    move-object v14, v8

    move-object/from16 v15, p5

    .line 631
    invoke-interface/range {v9 .. v15}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v18

    .restart local v18    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    goto :goto_4

    .line 634
    .end local v18    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_8
    move-object/from16 v18, v4

    .restart local v18    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    goto :goto_4

    .line 647
    .end local v5    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .end local v6    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_3
.end method
