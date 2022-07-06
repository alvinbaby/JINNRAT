.class Lcom/google/firebase/database/core/SyncTree$11;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/SyncTree;->addEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<+",
        "Lcom/google/firebase/database/core/view/Event;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/SyncTree;

.field final synthetic val$eventRegistration:Lcom/google/firebase/database/core/EventRegistration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 459
    const-class v0, Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/firebase/database/core/SyncTree$11;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/EventRegistration;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/core/SyncTree;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree$11;->this$0:Lcom/google/firebase/database/core/SyncTree;

    iput-object p2, p0, Lcom/google/firebase/database/core/SyncTree$11;->val$eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/google/firebase/database/core/SyncTree$11;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$11;->val$eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v14

    .line 463
    .local v14, "query":Lcom/google/firebase/database/core/view/QuerySpec;
    invoke-virtual {v14}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v12

    .line 465
    .local v12, "path":Lcom/google/firebase/database/core/Path;
    const/16 v16, 0x0

    .line 466
    .local v16, "serverCacheNode":Lcom/google/firebase/database/snapshot/Node;
    const/4 v10, 0x0

    .line 472
    .local v10, "foundAncestorDefaultView":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$11;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/firebase/database/core/SyncTree;->access$700(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v20

    .line 473
    .local v20, "tree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/core/SyncPoint;>;"
    move-object v7, v12

    .line 474
    .local v7, "currentPath":Lcom/google/firebase/database/core/Path;
    :goto_0
    invoke-virtual/range {v20 .. v20}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_5

    .line 475
    invoke-virtual/range {v20 .. v20}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/database/core/SyncPoint;

    .line 476
    .local v8, "currentSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    if-eqz v8, :cond_1

    .line 478
    if-eqz v16, :cond_2

    .line 481
    :goto_1
    if-nez v10, :cond_0

    .line 482
    invoke-virtual {v8}, Lcom/google/firebase/database/core/SyncPoint;->hasCompleteView()Z

    move-result v24

    if-eqz v24, :cond_3

    :cond_0
    const/4 v10, 0x1

    .line 485
    :cond_1
    :goto_2
    invoke-virtual {v7}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_4

    const-string v24, ""

    invoke-static/range {v24 .. v24}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v11

    .line 486
    .local v11, "front":Lcom/google/firebase/database/snapshot/ChildKey;
    :goto_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v20

    .line 487
    invoke-virtual {v7}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v7

    .line 488
    goto :goto_0

    .line 480
    .end local v11    # "front":Lcom/google/firebase/database/snapshot/ChildKey;
    :cond_2
    invoke-virtual {v8, v7}, Lcom/google/firebase/database/core/SyncPoint;->getCompleteServerCache(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v16

    goto :goto_1

    .line 482
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 485
    :cond_4
    invoke-virtual {v7}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v11

    goto :goto_3

    .line 491
    .end local v8    # "currentSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$11;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/firebase/database/core/SyncTree;->access$700(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/firebase/database/core/SyncPoint;

    .line 492
    .local v18, "syncPoint":Lcom/google/firebase/database/core/SyncPoint;
    if-nez v18, :cond_6

    .line 493
    new-instance v18, Lcom/google/firebase/database/core/SyncPoint;

    .end local v18    # "syncPoint":Lcom/google/firebase/database/core/SyncPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$11;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/firebase/database/core/SyncTree;->access$200(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/persistence/PersistenceManager;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/google/firebase/database/core/SyncPoint;-><init>(Lcom/google/firebase/database/core/persistence/PersistenceManager;)V

    .line 494
    .restart local v18    # "syncPoint":Lcom/google/firebase/database/core/SyncPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$11;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$11;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/google/firebase/database/core/SyncTree;->access$700(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->set(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/google/firebase/database/core/SyncTree;->access$702(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 503
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$11;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/firebase/database/core/SyncTree;->access$200(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/persistence/PersistenceManager;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v14}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->setQueryActive(Lcom/google/firebase/database/core/view/QuerySpec;)V

    .line 506
    if-eqz v16, :cond_a

    .line 507
    new-instance v15, Lcom/google/firebase/database/core/view/CacheNode;

    .line 508
    invoke-virtual {v14}, Lcom/google/firebase/database/core/view/QuerySpec;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v15, v0, v1, v2}, Lcom/google/firebase/database/core/view/CacheNode;-><init>(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)V

    .line 540
    .local v15, "serverCache":Lcom/google/firebase/database/core/view/CacheNode;
    :goto_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/google/firebase/database/core/SyncPoint;->viewExistsForQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Z

    move-result v22

    .line 541
    .local v22, "viewAlreadyExists":Z
    if-nez v22, :cond_11

    invoke-virtual {v14}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v24

    if-nez v24, :cond_11

    .line 543
    sget-boolean v24, Lcom/google/firebase/database/core/SyncTree$11;->$assertionsDisabled:Z

    if-nez v24, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$11;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/firebase/database/core/SyncTree;->access$800(Lcom/google/firebase/database/core/SyncTree;)Ljava/util/Map;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_10

    new-instance v24, Ljava/lang/AssertionError;

    const-string v25, "View does not exist but we have a tag"

    invoke-direct/range {v24 .. v25}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v24

    .line 496
    .end local v15    # "serverCache":Lcom/google/firebase/database/core/view/CacheNode;
    .end local v22    # "viewAlreadyExists":Z
    :cond_6
    if-nez v10, :cond_7

    invoke-virtual/range {v18 .. v18}, Lcom/google/firebase/database/core/SyncPoint;->hasCompleteView()Z

    move-result v24

    if-eqz v24, :cond_8

    :cond_7
    const/4 v10, 0x1

    .line 498
    :goto_6
    if-eqz v16, :cond_9

    .line 500
    :goto_7
    goto :goto_4

    .line 496
    :cond_8
    const/4 v10, 0x0

    goto :goto_6

    .line 500
    :cond_9
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/SyncPoint;->getCompleteServerCache(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v16

    goto :goto_7

    .line 511
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$11;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/firebase/database/core/SyncTree;->access$200(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/persistence/PersistenceManager;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v14}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->serverCache(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v13

    .line 512
    .local v13, "persistentServerCache":Lcom/google/firebase/database/core/view/CacheNode;
    invoke-virtual {v13}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v24

    if-eqz v24, :cond_b

    .line 513
    move-object v15, v13

    .restart local v15    # "serverCache":Lcom/google/firebase/database/core/view/CacheNode;
    goto :goto_5

    .line 515
    .end local v15    # "serverCache":Lcom/google/firebase/database/core/view/CacheNode;
    :cond_b
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v16

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$11;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/firebase/database/core/SyncTree;->access$700(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->subtree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v17

    .line 517
    .local v17, "subtree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/core/SyncPoint;>;"
    invoke-virtual/range {v17 .. v17}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChildren()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_c
    :goto_8
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_d

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 518
    .local v4, "child":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/core/SyncPoint;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual/range {v24 .. v24}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/database/core/SyncPoint;

    .line 519
    .local v5, "childSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    if-eqz v5, :cond_c

    .line 520
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/google/firebase/database/core/SyncPoint;->getCompleteServerCache(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v6

    .line 521
    .local v6, "completeCache":Lcom/google/firebase/database/snapshot/Node;
    if-eqz v6, :cond_c

    .line 523
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/firebase/database/snapshot/ChildKey;

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v6}, Lcom/google/firebase/database/snapshot/Node;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v16

    goto :goto_8

    .line 528
    .end local v4    # "child":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/core/SyncPoint;>;>;"
    .end local v5    # "childSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    .end local v6    # "completeCache":Lcom/google/firebase/database/snapshot/Node;
    :cond_d
    invoke-virtual {v13}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_e
    :goto_9
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_f

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 529
    .local v3, "child":Lcom/google/firebase/database/snapshot/NamedNode;
    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v25

    if-nez v25, :cond_e

    .line 531
    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v25

    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/snapshot/Node;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v16

    goto :goto_9

    .line 534
    .end local v3    # "child":Lcom/google/firebase/database/snapshot/NamedNode;
    :cond_f
    new-instance v15, Lcom/google/firebase/database/core/view/CacheNode;

    .line 536
    invoke-virtual {v14}, Lcom/google/firebase/database/core/view/QuerySpec;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v15, v0, v1, v2}, Lcom/google/firebase/database/core/view/CacheNode;-><init>(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)V

    .restart local v15    # "serverCache":Lcom/google/firebase/database/core/view/CacheNode;
    goto/16 :goto_5

    .line 544
    .end local v13    # "persistentServerCache":Lcom/google/firebase/database/core/view/CacheNode;
    .end local v17    # "subtree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/core/SyncPoint;>;"
    .restart local v22    # "viewAlreadyExists":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$11;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/firebase/database/core/SyncTree;->access$900(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/Tag;

    move-result-object v19

    .line 545
    .local v19, "tag":Lcom/google/firebase/database/core/Tag;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$11;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/firebase/database/core/SyncTree;->access$800(Lcom/google/firebase/database/core/SyncTree;)Ljava/util/Map;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$11;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/firebase/database/core/SyncTree;->access$1000(Lcom/google/firebase/database/core/SyncTree;)Ljava/util/Map;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    .end local v19    # "tag":Lcom/google/firebase/database/core/Tag;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$11;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/firebase/database/core/SyncTree;->access$300(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/WriteTree;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lcom/google/firebase/database/core/WriteTree;->childWrites(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/WriteTreeRef;

    move-result-object v23

    .line 549
    .local v23, "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$11;->val$eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

    move-object/from16 v24, v0

    .line 550
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v15}, Lcom/google/firebase/database/core/SyncPoint;->addEventRegistration(Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/CacheNode;)Ljava/util/List;

    move-result-object v9

    .line 551
    .local v9, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    if-nez v22, :cond_12

    if-nez v10, :cond_12

    .line 552
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/google/firebase/database/core/SyncPoint;->viewForQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/View;

    move-result-object v21

    .line 553
    .local v21, "view":Lcom/google/firebase/database/core/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$11;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-static {v0, v14, v1}, Lcom/google/firebase/database/core/SyncTree;->access$1100(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/view/View;)V

    .line 555
    .end local v21    # "view":Lcom/google/firebase/database/core/view/View;
    :cond_12
    return-object v9
.end method
