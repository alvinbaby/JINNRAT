.class public Lcom/google/firebase/database/core/WriteTree;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEFAULT_FILTER:Lcom/google/firebase/database/core/utilities/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/Predicate",
            "<",
            "Lcom/google/firebase/database/core/UserWriteRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allWrites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/UserWriteRecord;",
            ">;"
        }
    .end annotation
.end field

.field private lastWriteId:Ljava/lang/Long;

.field private visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/google/firebase/database/core/WriteTree;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/firebase/database/core/WriteTree;->$assertionsDisabled:Z

    .line 409
    new-instance v0, Lcom/google/firebase/database/core/WriteTree$2;

    invoke-direct {v0}, Lcom/google/firebase/database/core/WriteTree$2;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/WriteTree;->DEFAULT_FILTER:Lcom/google/firebase/database/core/utilities/Predicate;

    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    .line 58
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    .line 59
    return-void
.end method

.method private static layerTree(Ljava/util/List;Lcom/google/firebase/database/core/utilities/Predicate;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;
    .locals 9
    .param p2, "treeRoot"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/UserWriteRecord;",
            ">;",
            "Lcom/google/firebase/database/core/utilities/Predicate",
            "<",
            "Lcom/google/firebase/database/core/UserWriteRecord;",
            ">;",
            "Lcom/google/firebase/database/core/Path;",
            ")",
            "Lcom/google/firebase/database/core/CompoundWrite;"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "writes":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/UserWriteRecord;>;"
    .local p1, "filter":Lcom/google/firebase/database/core/utilities/Predicate;, "Lcom/google/firebase/database/core/utilities/Predicate<Lcom/google/firebase/database/core/UserWriteRecord;>;"
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    .line 424
    .local v0, "compoundWrite":Lcom/google/firebase/database/core/CompoundWrite;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/UserWriteRecord;

    .line 430
    .local v3, "write":Lcom/google/firebase/database/core/UserWriteRecord;
    invoke-interface {p1, v3}, Lcom/google/firebase/database/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 431
    invoke-virtual {v3}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v4

    .line 432
    .local v4, "writePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {v3}, Lcom/google/firebase/database/core/UserWriteRecord;->isOverwrite()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 433
    invoke-virtual {p2, v4}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 434
    invoke-static {p2, v4}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 435
    .local v2, "relativePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {v3}, Lcom/google/firebase/database/core/UserWriteRecord;->getOverwrite()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    .line 436
    goto :goto_0

    .end local v2    # "relativePath":Lcom/google/firebase/database/core/Path;
    :cond_1
    invoke-virtual {v4, p2}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 439
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v6

    .line 440
    invoke-virtual {v3}, Lcom/google/firebase/database/core/UserWriteRecord;->getOverwrite()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v7

    invoke-static {v4, p2}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v7

    .line 438
    invoke-virtual {v0, v6, v7}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    goto :goto_0

    .line 445
    :cond_2
    invoke-virtual {p2, v4}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 446
    invoke-static {p2, v4}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 447
    .restart local v2    # "relativePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {v3}, Lcom/google/firebase/database/core/UserWriteRecord;->getMerge()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Lcom/google/firebase/database/core/CompoundWrite;->addWrites(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    .line 448
    goto :goto_0

    .end local v2    # "relativePath":Lcom/google/firebase/database/core/Path;
    :cond_3
    invoke-virtual {v4, p2}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 449
    invoke-static {v4, p2}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 450
    .restart local v2    # "relativePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {v2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 451
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/firebase/database/core/UserWriteRecord;->getMerge()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/google/firebase/database/core/CompoundWrite;->addWrites(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    goto :goto_0

    .line 453
    :cond_4
    invoke-virtual {v3}, Lcom/google/firebase/database/core/UserWriteRecord;->getMerge()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 454
    .local v1, "deepNode":Lcom/google/firebase/database/snapshot/Node;
    if-eqz v1, :cond_0

    .line 455
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    goto/16 :goto_0

    .line 464
    .end local v1    # "deepNode":Lcom/google/firebase/database/snapshot/Node;
    .end local v2    # "relativePath":Lcom/google/firebase/database/core/Path;
    .end local v3    # "write":Lcom/google/firebase/database/core/UserWriteRecord;
    .end local v4    # "writePath":Lcom/google/firebase/database/core/Path;
    :cond_5
    return-object v0
.end method

.method private recordContainsPath(Lcom/google/firebase/database/core/UserWriteRecord;Lcom/google/firebase/database/core/Path;)Z
    .locals 4
    .param p1, "writeRecord"    # Lcom/google/firebase/database/core/UserWriteRecord;
    .param p2, "path"    # Lcom/google/firebase/database/core/Path;

    .prologue
    .line 385
    invoke-virtual {p1}, Lcom/google/firebase/database/core/UserWriteRecord;->isOverwrite()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    invoke-virtual {p1}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v1

    .line 393
    :goto_0
    return v1

    .line 388
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/database/core/UserWriteRecord;->getMerge()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 389
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    invoke-virtual {p1}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/Path;

    invoke-virtual {v3, v1}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    const/4 v1, 0x1

    goto :goto_0

    .line 393
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetTree()V
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    sget-object v1, Lcom/google/firebase/database/core/WriteTree;->DEFAULT_FILTER:Lcom/google/firebase/database/core/utilities/Predicate;

    .line 400
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/firebase/database/core/WriteTree;->layerTree(Ljava/util/List;Lcom/google/firebase/database/core/utilities/Predicate;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    .line 401
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/UserWriteRecord;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/UserWriteRecord;->getWriteId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_0
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public addMerge(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Ljava/lang/Long;)V
    .locals 4
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "changedChildren"    # Lcom/google/firebase/database/core/CompoundWrite;
    .param p3, "writeId"    # Ljava/lang/Long;

    .prologue
    .line 80
    sget-boolean v0, Lcom/google/firebase/database/core/WriteTree;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    new-instance v1, Lcom/google/firebase/database/core/UserWriteRecord;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/firebase/database/core/UserWriteRecord;-><init>(JLcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/core/CompoundWrite;->addWrites(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    .line 83
    iput-object p3, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    .line 84
    return-void
.end method

.method public addOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/lang/Long;Z)V
    .locals 7
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "snap"    # Lcom/google/firebase/database/snapshot/Node;
    .param p3, "writeId"    # Ljava/lang/Long;
    .param p4, "visible"    # Z

    .prologue
    .line 70
    sget-boolean v0, Lcom/google/firebase/database/core/WriteTree;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    new-instance v1, Lcom/google/firebase/database/core/UserWriteRecord;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/database/core/UserWriteRecord;-><init>(JLcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    if-eqz p4, :cond_1

    .line 73
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    .line 75
    :cond_1
    iput-object p3, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    .line 76
    return-void
.end method

.method public calcCompleteChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/view/CacheNode;)Lcom/google/firebase/database/snapshot/Node;
    .locals 4
    .param p1, "treePath"    # Lcom/google/firebase/database/core/Path;
    .param p2, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p3, "existingServerSnap"    # Lcom/google/firebase/database/core/view/CacheNode;

    .prologue
    .line 334
    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v1

    .line 335
    .local v1, "path":Lcom/google/firebase/database/core/Path;
    iget-object v3, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v3, v1}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    .line 336
    .local v2, "shadowingNode":Lcom/google/firebase/database/snapshot/Node;
    if-eqz v2, :cond_0

    .line 343
    .end local v2    # "shadowingNode":Lcom/google/firebase/database/snapshot/Node;
    :goto_0
    return-object v2

    .line 339
    .restart local v2    # "shadowingNode":Lcom/google/firebase/database/snapshot/Node;
    :cond_0
    invoke-virtual {p3, p2}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    iget-object v3, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v3, v1}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    .line 341
    .local v0, "childMerge":Lcom/google/firebase/database/core/CompoundWrite;
    invoke-virtual {p3}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    goto :goto_0

    .line 343
    .end local v0    # "childMerge":Lcom/google/firebase/database/core/CompoundWrite;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1
    .param p1, "treePath"    # Lcom/google/firebase/database/core/Path;
    .param p2, "completeServerCache"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/database/core/WriteTree;->calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1
    .param p1, "treePath"    # Lcom/google/firebase/database/core/Path;
    .param p2, "completeServerCache"    # Lcom/google/firebase/database/snapshot/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/firebase/database/snapshot/Node;"
        }
    .end annotation

    .prologue
    .line 190
    .local p3, "writeIdsToExclude":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/firebase/database/core/WriteTree;->calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;Z)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;Z)Lcom/google/firebase/database/snapshot/Node;
    .locals 8
    .param p1, "treePath"    # Lcom/google/firebase/database/core/Path;
    .param p2, "completeServerCache"    # Lcom/google/firebase/database/snapshot/Node;
    .param p4, "includeHiddenWrites"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lcom/google/firebase/database/snapshot/Node;"
        }
    .end annotation

    .prologue
    .local p3, "writeIdsToExclude":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 198
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez p4, :cond_4

    .line 199
    iget-object v7, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v7, p1}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    .line 200
    .local v4, "shadowingNode":Lcom/google/firebase/database/snapshot/Node;
    if-eqz v4, :cond_1

    move-object p2, v4

    .line 243
    .end local v4    # "shadowingNode":Lcom/google/firebase/database/snapshot/Node;
    .end local p2    # "completeServerCache":Lcom/google/firebase/database/snapshot/Node;
    :cond_0
    :goto_0
    return-object p2

    .line 203
    .restart local v4    # "shadowingNode":Lcom/google/firebase/database/snapshot/Node;
    .restart local p2    # "completeServerCache":Lcom/google/firebase/database/snapshot/Node;
    :cond_1
    iget-object v7, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v7, p1}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v5

    .line 204
    .local v5, "subMerge":Lcom/google/firebase/database/core/CompoundWrite;
    invoke-virtual {v5}, Lcom/google/firebase/database/core/CompoundWrite;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 206
    if-nez p2, :cond_2

    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/firebase/database/core/CompoundWrite;->hasCompleteWrite(Lcom/google/firebase/database/core/Path;)Z

    move-result v7

    if-nez v7, :cond_2

    move-object p2, v6

    .line 209
    goto :goto_0

    .line 212
    :cond_2
    if-eqz p2, :cond_3

    .line 213
    move-object v1, p2

    .line 217
    .local v1, "layeredCache":Lcom/google/firebase/database/snapshot/Node;
    :goto_1
    invoke-virtual {v5, v1}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    goto :goto_0

    .line 215
    .end local v1    # "layeredCache":Lcom/google/firebase/database/snapshot/Node;
    :cond_3
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v1

    .restart local v1    # "layeredCache":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_1

    .line 221
    .end local v1    # "layeredCache":Lcom/google/firebase/database/snapshot/Node;
    .end local v4    # "shadowingNode":Lcom/google/firebase/database/snapshot/Node;
    .end local v5    # "subMerge":Lcom/google/firebase/database/core/CompoundWrite;
    :cond_4
    iget-object v7, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v7, p1}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v2

    .line 222
    .local v2, "merge":Lcom/google/firebase/database/core/CompoundWrite;
    if-nez p4, :cond_5

    invoke-virtual {v2}, Lcom/google/firebase/database/core/CompoundWrite;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 226
    :cond_5
    if-nez p4, :cond_6

    if-nez p2, :cond_6

    .line 228
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/firebase/database/core/CompoundWrite;->hasCompleteWrite(Lcom/google/firebase/database/core/Path;)Z

    move-result v7

    if-nez v7, :cond_6

    move-object p2, v6

    .line 229
    goto :goto_0

    .line 231
    :cond_6
    new-instance v0, Lcom/google/firebase/database/core/WriteTree$1;

    invoke-direct {v0, p0, p4, p3, p1}, Lcom/google/firebase/database/core/WriteTree$1;-><init>(Lcom/google/firebase/database/core/WriteTree;ZLjava/util/List;Lcom/google/firebase/database/core/Path;)V

    .line 241
    .local v0, "filter":Lcom/google/firebase/database/core/utilities/Predicate;, "Lcom/google/firebase/database/core/utilities/Predicate<Lcom/google/firebase/database/core/UserWriteRecord;>;"
    iget-object v6, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-static {v6, v0, p1}, Lcom/google/firebase/database/core/WriteTree;->layerTree(Ljava/util/List;Lcom/google/firebase/database/core/utilities/Predicate;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v3

    .line 242
    .local v3, "mergeAtPath":Lcom/google/firebase/database/core/CompoundWrite;
    if-eqz p2, :cond_7

    move-object v1, p2

    .line 243
    .restart local v1    # "layeredCache":Lcom/google/firebase/database/snapshot/Node;
    :goto_2
    invoke-virtual {v3, v1}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    goto :goto_0

    .line 242
    .end local v1    # "layeredCache":Lcom/google/firebase/database/snapshot/Node;
    :cond_7
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v1

    goto :goto_2
.end method

.method public calcCompleteEventChildren(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 13
    .param p1, "treePath"    # Lcom/google/firebase/database/core/Path;
    .param p2, "completeServerChildren"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 255
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v1

    .line 256
    .local v1, "completeChildren":Lcom/google/firebase/database/snapshot/Node;
    iget-object v8, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v8, p1}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v7

    .line 257
    .local v7, "topLevelSet":Lcom/google/firebase/database/snapshot/Node;
    if-eqz v7, :cond_1

    .line 258
    invoke-interface {v7}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v8

    if-nez v8, :cond_0

    .line 260
    invoke-interface {v7}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 262
    .local v0, "childEntry":Lcom/google/firebase/database/snapshot/NamedNode;
    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v9

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Lcom/google/firebase/database/snapshot/Node;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 263
    goto :goto_0

    .end local v0    # "childEntry":Lcom/google/firebase/database/snapshot/NamedNode;
    :cond_0
    move-object v2, v1

    .end local v1    # "completeChildren":Lcom/google/firebase/database/snapshot/Node;
    .local v2, "completeChildren":Lcom/google/firebase/database/snapshot/Node;
    move-object v3, v1

    .line 279
    .end local v2    # "completeChildren":Lcom/google/firebase/database/snapshot/Node;
    .local v3, "completeChildren":Lcom/google/firebase/database/snapshot/Node;
    :goto_1
    return-object v3

    .line 270
    .end local v3    # "completeChildren":Lcom/google/firebase/database/snapshot/Node;
    .restart local v1    # "completeChildren":Lcom/google/firebase/database/snapshot/Node;
    :cond_1
    iget-object v8, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v8, p1}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v5

    .line 271
    .local v5, "merge":Lcom/google/firebase/database/core/CompoundWrite;
    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 272
    .local v4, "entry":Lcom/google/firebase/database/snapshot/NamedNode;
    new-instance v9, Lcom/google/firebase/database/core/Path;

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/google/firebase/database/snapshot/ChildKey;

    const/4 v11, 0x0

    invoke-virtual {v4}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {v9, v10}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;)V

    invoke-virtual {v5, v9}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v9

    invoke-virtual {v4}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v6

    .line 273
    .local v6, "node":Lcom/google/firebase/database/snapshot/Node;
    invoke-virtual {v4}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v9

    invoke-interface {v1, v9, v6}, Lcom/google/firebase/database/snapshot/Node;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 274
    goto :goto_2

    .line 276
    .end local v4    # "entry":Lcom/google/firebase/database/snapshot/NamedNode;
    .end local v6    # "node":Lcom/google/firebase/database/snapshot/Node;
    :cond_2
    invoke-virtual {v5}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteChildren()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 277
    .local v6, "node":Lcom/google/firebase/database/snapshot/NamedNode;
    invoke-virtual {v6}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v9

    invoke-virtual {v6}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Lcom/google/firebase/database/snapshot/Node;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 278
    goto :goto_3

    .end local v6    # "node":Lcom/google/firebase/database/snapshot/NamedNode;
    :cond_3
    move-object v2, v1

    .end local v1    # "completeChildren":Lcom/google/firebase/database/snapshot/Node;
    .restart local v2    # "completeChildren":Lcom/google/firebase/database/snapshot/Node;
    move-object v3, v1

    .line 279
    .end local v2    # "completeChildren":Lcom/google/firebase/database/snapshot/Node;
    .restart local v3    # "completeChildren":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_1
.end method

.method public calcEventCacheAfterServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 4
    .param p1, "treePath"    # Lcom/google/firebase/database/core/Path;
    .param p2, "childPath"    # Lcom/google/firebase/database/core/Path;
    .param p3, "existingEventSnap"    # Lcom/google/firebase/database/snapshot/Node;
    .param p4, "existingServerSnap"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 303
    sget-boolean v2, Lcom/google/firebase/database/core/WriteTree;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Either existingEventSnap or existingServerSnap must exist"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 305
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v1

    .line 306
    .local v1, "path":Lcom/google/firebase/database/core/Path;
    iget-object v2, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v2, v1}, Lcom/google/firebase/database/core/CompoundWrite;->hasCompleteWrite(Lcom/google/firebase/database/core/Path;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    const/4 v2, 0x0

    .line 324
    :goto_0
    return-object v2

    .line 312
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v2, v1}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    .line 313
    .local v0, "childMerge":Lcom/google/firebase/database/core/CompoundWrite;
    invoke-virtual {v0}, Lcom/google/firebase/database/core/CompoundWrite;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 315
    invoke-interface {p4, p2}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    goto :goto_0

    .line 324
    :cond_2
    invoke-interface {p4, p2}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    goto :goto_0
.end method

.method public calcNextNodeAfterPost(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/NamedNode;ZLcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/NamedNode;
    .locals 7
    .param p1, "treePath"    # Lcom/google/firebase/database/core/Path;
    .param p2, "completeServerData"    # Lcom/google/firebase/database/snapshot/Node;
    .param p3, "post"    # Lcom/google/firebase/database/snapshot/NamedNode;
    .param p4, "reverse"    # Z
    .param p5, "index"    # Lcom/google/firebase/database/snapshot/Index;

    .prologue
    .line 364
    iget-object v5, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v5, p1}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v1

    .line 365
    .local v1, "merge":Lcom/google/firebase/database/core/CompoundWrite;
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    .line 366
    .local v3, "shadowingNode":Lcom/google/firebase/database/snapshot/Node;
    if-eqz v3, :cond_2

    .line 367
    move-object v4, v3

    .line 374
    .local v4, "toIterate":Lcom/google/firebase/database/snapshot/Node;
    :goto_0
    const/4 v0, 0x0

    .line 375
    .local v0, "currentNext":Lcom/google/firebase/database/snapshot/NamedNode;
    invoke-interface {v4}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 376
    .local v2, "node":Lcom/google/firebase/database/snapshot/NamedNode;
    invoke-virtual {p5, v2, p3, p4}, Lcom/google/firebase/database/snapshot/Index;->compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;Z)I

    move-result v6

    if-lez v6, :cond_0

    if-eqz v0, :cond_1

    .line 377
    invoke-virtual {p5, v2, v0, p4}, Lcom/google/firebase/database/snapshot/Index;->compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;Z)I

    move-result v6

    if-gez v6, :cond_0

    .line 378
    :cond_1
    move-object v0, v2

    goto :goto_1

    .line 368
    .end local v0    # "currentNext":Lcom/google/firebase/database/snapshot/NamedNode;
    .end local v2    # "node":Lcom/google/firebase/database/snapshot/NamedNode;
    .end local v4    # "toIterate":Lcom/google/firebase/database/snapshot/Node;
    :cond_2
    if-eqz p2, :cond_3

    .line 369
    invoke-virtual {v1, p2}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    .restart local v4    # "toIterate":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_0

    .line 372
    .end local v4    # "toIterate":Lcom/google/firebase/database/snapshot/Node;
    :cond_3
    const/4 v0, 0x0

    .line 381
    :cond_4
    return-object v0
.end method

.method public childWrites(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/WriteTreeRef;
    .locals 1
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .prologue
    .line 65
    new-instance v0, Lcom/google/firebase/database/core/WriteTreeRef;

    invoke-direct {v0, p1, p0}, Lcom/google/firebase/database/core/WriteTreeRef;-><init>(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTree;)V

    return-object v0
.end method

.method public getCompleteWriteData(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public getWrite(J)Lcom/google/firebase/database/core/UserWriteRecord;
    .locals 5
    .param p1, "writeId"    # J

    .prologue
    .line 87
    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/UserWriteRecord;

    .line 88
    .local v0, "record":Lcom/google/firebase/database/core/UserWriteRecord;
    invoke-virtual {v0}, Lcom/google/firebase/database/core/UserWriteRecord;->getWriteId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 92
    .end local v0    # "record":Lcom/google/firebase/database/core/UserWriteRecord;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public purgeAllWrites()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/UserWriteRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 98
    .local v0, "purgedWrites":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/UserWriteRecord;>;"
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    .line 100
    return-object v0
.end method

.method public removeWrite(J)Z
    .locals 13
    .param p1, "writeId"    # J

    .prologue
    .line 120
    const/4 v8, 0x0

    .line 121
    .local v8, "writeToRemove":Lcom/google/firebase/database/core/UserWriteRecord;
    const/4 v3, 0x0

    .line 122
    .local v3, "idx":I
    iget-object v9, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/database/core/UserWriteRecord;

    .line 123
    .local v5, "record":Lcom/google/firebase/database/core/UserWriteRecord;
    invoke-virtual {v5}, Lcom/google/firebase/database/core/UserWriteRecord;->getWriteId()J

    move-result-wide v10

    cmp-long v10, v10, p1

    if-nez v10, :cond_1

    .line 124
    move-object v8, v5

    .line 129
    .end local v5    # "record":Lcom/google/firebase/database/core/UserWriteRecord;
    :cond_0
    sget-boolean v9, Lcom/google/firebase/database/core/WriteTree;->$assertionsDisabled:Z

    if-nez v9, :cond_2

    if-nez v8, :cond_2

    new-instance v9, Ljava/lang/AssertionError;

    const-string v10, "removeWrite called with nonexistent writeId"

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 127
    .restart local v5    # "record":Lcom/google/firebase/database/core/UserWriteRecord;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 128
    goto :goto_0

    .line 131
    .end local v5    # "record":Lcom/google/firebase/database/core/UserWriteRecord;
    :cond_2
    iget-object v9, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v8}, Lcom/google/firebase/database/core/UserWriteRecord;->isVisible()Z

    move-result v7

    .line 134
    .local v7, "removedWriteWasVisible":Z
    const/4 v6, 0x0

    .line 135
    .local v6, "removedWriteOverlapsWithOtherWrites":Z
    iget-object v9, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 137
    .local v2, "i":I
    :goto_1
    if-eqz v7, :cond_5

    if-ltz v2, :cond_5

    .line 138
    iget-object v9, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/UserWriteRecord;

    .line 139
    .local v0, "currentWrite":Lcom/google/firebase/database/core/UserWriteRecord;
    invoke-virtual {v0}, Lcom/google/firebase/database/core/UserWriteRecord;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 140
    if-lt v2, v3, :cond_4

    invoke-virtual {v8}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v9

    invoke-direct {p0, v0, v9}, Lcom/google/firebase/database/core/WriteTree;->recordContainsPath(Lcom/google/firebase/database/core/UserWriteRecord;Lcom/google/firebase/database/core/Path;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 142
    const/4 v7, 0x0

    .line 149
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 150
    goto :goto_1

    .line 143
    :cond_4
    invoke-virtual {v8}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v9

    invoke-virtual {v0}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 146
    const/4 v6, 0x1

    goto :goto_2

    .line 152
    .end local v0    # "currentWrite":Lcom/google/firebase/database/core/UserWriteRecord;
    :cond_5
    if-nez v7, :cond_6

    .line 153
    const/4 v9, 0x0

    .line 168
    :goto_3
    return v9

    .line 154
    :cond_6
    if-eqz v6, :cond_7

    .line 156
    invoke-direct {p0}, Lcom/google/firebase/database/core/WriteTree;->resetTree()V

    .line 157
    const/4 v9, 0x1

    goto :goto_3

    .line 160
    :cond_7
    invoke-virtual {v8}, Lcom/google/firebase/database/core/UserWriteRecord;->isOverwrite()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 161
    iget-object v9, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v8}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/firebase/database/core/CompoundWrite;->removeWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v9

    iput-object v9, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    .line 168
    :cond_8
    const/4 v9, 0x1

    goto :goto_3

    .line 163
    :cond_9
    invoke-virtual {v8}, Lcom/google/firebase/database/core/UserWriteRecord;->getMerge()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/firebase/database/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 164
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/core/Path;

    .line 165
    .local v4, "path":Lcom/google/firebase/database/core/Path;
    iget-object v10, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v8}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/firebase/database/core/CompoundWrite;->removeWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v10

    iput-object v10, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    goto :goto_4
.end method

.method public shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method
