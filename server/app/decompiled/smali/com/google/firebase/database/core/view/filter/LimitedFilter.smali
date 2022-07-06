.class public Lcom/google/firebase/database/core/view/filter/LimitedFilter;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Lcom/google/firebase/database/core/view/filter/NodeFilter;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final index:Lcom/google/firebase/database/snapshot/Index;

.field private final limit:I

.field private final rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

.field private final reverse:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/firebase/database/core/view/QueryParams;)V
    .locals 1
    .param p1, "params"    # Lcom/google/firebase/database/core/view/QueryParams;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-direct {v0, p1}, Lcom/google/firebase/database/core/view/filter/RangedFilter;-><init>(Lcom/google/firebase/database/core/view/QueryParams;)V

    iput-object v0, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    .line 41
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    .line 42
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->getLimit()I

    move-result v0

    iput v0, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->limit:I

    .line 43
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->isViewFromLeft()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->reverse:Z

    .line 44
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fullLimitUpdateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;
    .locals 13
    .param p1, "oldIndexed"    # Lcom/google/firebase/database/snapshot/IndexedNode;
    .param p2, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p3, "childSnap"    # Lcom/google/firebase/database/snapshot/Node;
    .param p4, "source"    # Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;
    .param p5, "optChangeAccumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .prologue
    .line 76
    sget-boolean v10, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v10

    invoke-interface {v10}, Lcom/google/firebase/database/snapshot/Node;->getChildCount()I

    move-result v10

    iget v11, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->limit:I

    if-eq v10, v11, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 77
    :cond_0
    new-instance v3, Lcom/google/firebase/database/snapshot/NamedNode;

    move-object/from16 v0, p3

    invoke-direct {v3, p2, v0}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    .line 79
    .local v3, "newChildNamedNode":Lcom/google/firebase/database/snapshot/NamedNode;
    iget-boolean v10, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->reverse:Z

    if-eqz v10, :cond_2

    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getFirstChild()Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v9

    .line 80
    .local v9, "windowBoundary":Lcom/google/firebase/database/snapshot/NamedNode;
    :goto_0
    iget-object v10, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-virtual {v10, v3}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->matches(Lcom/google/firebase/database/snapshot/NamedNode;)Z

    move-result v2

    .line 81
    .local v2, "inRange":Z
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v10

    invoke-interface {v10, p2}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 82
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v10

    invoke-interface {v10, p2}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v7

    .line 83
    .local v7, "oldChildSnap":Lcom/google/firebase/database/snapshot/Node;
    iget-object v10, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    iget-boolean v11, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->reverse:Z

    move-object/from16 v0, p4

    invoke-interface {v0, v10, v9, v11}, Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;->getChildAfterChild(Lcom/google/firebase/database/snapshot/Index;Lcom/google/firebase/database/snapshot/NamedNode;Z)Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v5

    .line 84
    .local v5, "nextChild":Lcom/google/firebase/database/snapshot/NamedNode;
    :goto_1
    if-eqz v5, :cond_3

    .line 85
    invoke-virtual {v5}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v10

    invoke-virtual {v10, p2}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 86
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v10

    invoke-virtual {v5}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 90
    :cond_1
    iget-object v10, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    iget-boolean v11, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->reverse:Z

    move-object/from16 v0, p4

    invoke-interface {v0, v10, v5, v11}, Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;->getChildAfterChild(Lcom/google/firebase/database/snapshot/Index;Lcom/google/firebase/database/snapshot/NamedNode;Z)Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v5

    goto :goto_1

    .line 79
    .end local v2    # "inRange":Z
    .end local v5    # "nextChild":Lcom/google/firebase/database/snapshot/NamedNode;
    .end local v7    # "oldChildSnap":Lcom/google/firebase/database/snapshot/Node;
    .end local v9    # "windowBoundary":Lcom/google/firebase/database/snapshot/NamedNode;
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getLastChild()Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v9

    goto :goto_0

    .line 93
    .restart local v2    # "inRange":Z
    .restart local v5    # "nextChild":Lcom/google/firebase/database/snapshot/NamedNode;
    .restart local v7    # "oldChildSnap":Lcom/google/firebase/database/snapshot/Node;
    .restart local v9    # "windowBoundary":Lcom/google/firebase/database/snapshot/NamedNode;
    :cond_3
    if-nez v5, :cond_6

    const/4 v1, 0x1

    .line 94
    .local v1, "compareNext":I
    :goto_2
    if-eqz v2, :cond_7

    invoke-interface/range {p3 .. p3}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    if-ltz v1, :cond_7

    const/4 v8, 0x1

    .line 95
    .local v8, "remainsInWindow":Z
    :goto_3
    if-eqz v8, :cond_8

    .line 96
    if-eqz p5, :cond_4

    .line 98
    move-object/from16 v0, p3

    invoke-static {p2, v0, v7}, Lcom/google/firebase/database/core/view/Change;->childChangedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v10

    .line 97
    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    .line 100
    :cond_4
    invoke-virtual/range {p1 .. p3}, Lcom/google/firebase/database/snapshot/IndexedNode;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p1

    .line 134
    .end local v1    # "compareNext":I
    .end local v5    # "nextChild":Lcom/google/firebase/database/snapshot/NamedNode;
    .end local v7    # "oldChildSnap":Lcom/google/firebase/database/snapshot/Node;
    .end local v8    # "remainsInWindow":Z
    .end local p1    # "oldIndexed":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_5
    :goto_4
    return-object p1

    .line 93
    .restart local v5    # "nextChild":Lcom/google/firebase/database/snapshot/NamedNode;
    .restart local v7    # "oldChildSnap":Lcom/google/firebase/database/snapshot/Node;
    .restart local p1    # "oldIndexed":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_6
    iget-object v10, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    iget-boolean v11, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->reverse:Z

    invoke-virtual {v10, v5, v3, v11}, Lcom/google/firebase/database/snapshot/Index;->compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;Z)I

    move-result v1

    goto :goto_2

    .line 94
    .restart local v1    # "compareNext":I
    :cond_7
    const/4 v8, 0x0

    goto :goto_3

    .line 102
    .restart local v8    # "remainsInWindow":Z
    :cond_8
    if-eqz p5, :cond_9

    .line 103
    invoke-static {p2, v7}, Lcom/google/firebase/database/core/view/Change;->childRemovedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    .line 105
    :cond_9
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v10

    invoke-virtual {p1, p2, v10}, Lcom/google/firebase/database/snapshot/IndexedNode;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    .line 106
    .local v4, "newIndexed":Lcom/google/firebase/database/snapshot/IndexedNode;
    if-eqz v5, :cond_b

    iget-object v10, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-virtual {v10, v5}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->matches(Lcom/google/firebase/database/snapshot/NamedNode;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v6, 0x1

    .line 107
    .local v6, "nextChildInRange":Z
    :goto_5
    if-eqz v6, :cond_c

    .line 108
    if-eqz p5, :cond_a

    .line 110
    invoke-virtual {v5}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v10

    invoke-virtual {v5}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/firebase/database/core/view/Change;->childAddedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v10

    .line 109
    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    .line 112
    :cond_a
    invoke-virtual {v5}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v10

    invoke-virtual {v5}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lcom/google/firebase/database/snapshot/IndexedNode;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p1

    goto :goto_4

    .line 106
    .end local v6    # "nextChildInRange":Z
    :cond_b
    const/4 v6, 0x0

    goto :goto_5

    .restart local v6    # "nextChildInRange":Z
    :cond_c
    move-object p1, v4

    .line 114
    goto :goto_4

    .line 117
    .end local v1    # "compareNext":I
    .end local v4    # "newIndexed":Lcom/google/firebase/database/snapshot/IndexedNode;
    .end local v5    # "nextChild":Lcom/google/firebase/database/snapshot/NamedNode;
    .end local v6    # "nextChildInRange":Z
    .end local v7    # "oldChildSnap":Lcom/google/firebase/database/snapshot/Node;
    .end local v8    # "remainsInWindow":Z
    :cond_d
    invoke-interface/range {p3 .. p3}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 120
    if-eqz v2, :cond_5

    .line 121
    iget-object v10, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    iget-boolean v11, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->reverse:Z

    invoke-virtual {v10, v9, v3, v11}, Lcom/google/firebase/database/snapshot/Index;->compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;Z)I

    move-result v10

    if-ltz v10, :cond_5

    .line 122
    if-eqz p5, :cond_e

    .line 124
    invoke-virtual {v9}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v10

    invoke-virtual {v9}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/firebase/database/core/view/Change;->childRemovedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v10

    .line 123
    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    .line 125
    invoke-static/range {p2 .. p3}, Lcom/google/firebase/database/core/view/Change;->childAddedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    .line 128
    :cond_e
    invoke-virtual/range {p1 .. p3}, Lcom/google/firebase/database/snapshot/IndexedNode;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v10

    .line 129
    invoke-virtual {v9}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v11

    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/google/firebase/database/snapshot/IndexedNode;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p1

    goto/16 :goto_4
.end method


# virtual methods
.method public filtersNodes()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method public getIndex()Lcom/google/firebase/database/snapshot/Index;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    return-object v0
.end method

.method public getIndexedFilter()Lcom/google/firebase/database/core/view/filter/NodeFilter;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->getIndexedFilter()Lcom/google/firebase/database/core/view/filter/NodeFilter;

    move-result-object v0

    return-object v0
.end method

.method public updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;
    .locals 7
    .param p1, "snap"    # Lcom/google/firebase/database/snapshot/IndexedNode;
    .param p2, "key"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p3, "newChild"    # Lcom/google/firebase/database/snapshot/Node;
    .param p4, "affectedPath"    # Lcom/google/firebase/database/core/Path;
    .param p5, "source"    # Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;
    .param p6, "optChangeAccumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    new-instance v1, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-direct {v1, p2, p3}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->matches(Lcom/google/firebase/database/snapshot/NamedNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object p3

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    .end local p1    # "snap":Lcom/google/firebase/database/snapshot/IndexedNode;
    :goto_0
    return-object p1

    .line 60
    .restart local p1    # "snap":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->limit:I

    if-ge v0, v1, :cond_2

    .line 61
    iget-object v0, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    .line 62
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->getIndexedFilter()Lcom/google/firebase/database/core/view/filter/NodeFilter;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 63
    invoke-interface/range {v0 .. v6}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 65
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->fullLimitUpdateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p1

    goto :goto_0
.end method

.method public updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;
    .locals 11
    .param p1, "oldSnap"    # Lcom/google/firebase/database/snapshot/IndexedNode;
    .param p2, "newSnap"    # Lcom/google/firebase/database/snapshot/IndexedNode;
    .param p3, "optChangeAccumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .prologue
    .line 142
    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 144
    :cond_0
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v9

    iget-object v10, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-static {v9, v10}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    .line 182
    .local v2, "filtered":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_1
    iget-object v9, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-virtual {v9}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->getIndexedFilter()Lcom/google/firebase/database/core/view/filter/NodeFilter;

    move-result-object v9

    invoke-interface {v9, p1, v2, p3}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v9

    return-object v9

    .line 146
    .end local v2    # "filtered":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_2
    move-object v2, p2

    .line 148
    .restart local v2    # "filtered":Lcom/google/firebase/database/snapshot/IndexedNode;
    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->NullPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/google/firebase/database/snapshot/IndexedNode;->updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    .line 153
    iget-boolean v9, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->reverse:Z

    if-eqz v9, :cond_4

    .line 154
    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/IndexedNode;->reverseIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 155
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/database/snapshot/NamedNode;>;"
    iget-object v9, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-virtual {v9}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->getEndPost()Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v8

    .line 156
    .local v8, "startPost":Lcom/google/firebase/database/snapshot/NamedNode;
    iget-object v9, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-virtual {v9}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->getStartPost()Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v1

    .line 157
    .local v1, "endPost":Lcom/google/firebase/database/snapshot/NamedNode;
    const/4 v7, -0x1

    .line 165
    .local v7, "sign":I
    :goto_0
    const/4 v0, 0x0

    .line 166
    .local v0, "count":I
    const/4 v3, 0x0

    .line 167
    .local v3, "foundStartPost":Z
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 168
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 169
    .local v6, "next":Lcom/google/firebase/database/snapshot/NamedNode;
    if-nez v3, :cond_3

    iget-object v9, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-virtual {v9, v8, v6}, Lcom/google/firebase/database/snapshot/Index;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    mul-int/2addr v9, v7

    if-gtz v9, :cond_3

    .line 171
    const/4 v3, 0x1

    .line 173
    :cond_3
    if-eqz v3, :cond_5

    iget v9, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->limit:I

    if-ge v0, v9, :cond_5

    iget-object v9, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    .line 174
    invoke-virtual {v9, v6, v1}, Lcom/google/firebase/database/snapshot/Index;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    mul-int/2addr v9, v7

    if-gtz v9, :cond_5

    const/4 v4, 0x1

    .line 175
    .local v4, "inRange":Z
    :goto_2
    if-eqz v4, :cond_6

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    .end local v0    # "count":I
    .end local v1    # "endPost":Lcom/google/firebase/database/snapshot/NamedNode;
    .end local v3    # "foundStartPost":Z
    .end local v4    # "inRange":Z
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/database/snapshot/NamedNode;>;"
    .end local v6    # "next":Lcom/google/firebase/database/snapshot/NamedNode;
    .end local v7    # "sign":I
    .end local v8    # "startPost":Lcom/google/firebase/database/snapshot/NamedNode;
    :cond_4
    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/IndexedNode;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 160
    .restart local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/database/snapshot/NamedNode;>;"
    iget-object v9, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-virtual {v9}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->getStartPost()Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v8

    .line 161
    .restart local v8    # "startPost":Lcom/google/firebase/database/snapshot/NamedNode;
    iget-object v9, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-virtual {v9}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->getEndPost()Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v1

    .line 162
    .restart local v1    # "endPost":Lcom/google/firebase/database/snapshot/NamedNode;
    const/4 v7, 0x1

    .restart local v7    # "sign":I
    goto :goto_0

    .line 174
    .restart local v0    # "count":I
    .restart local v3    # "foundStartPost":Z
    .restart local v6    # "next":Lcom/google/firebase/database/snapshot/NamedNode;
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 178
    .restart local v4    # "inRange":Z
    :cond_6
    invoke-virtual {v6}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v9

    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lcom/google/firebase/database/snapshot/IndexedNode;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    goto :goto_1
.end method

.method public updatePriority(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;
    .locals 0
    .param p1, "oldSnap"    # Lcom/google/firebase/database/snapshot/IndexedNode;
    .param p2, "newPriority"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 188
    return-object p1
.end method
