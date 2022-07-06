.class public Lcom/google/firebase/database/snapshot/RangeMerge;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final optExclusiveStart:Lcom/google/firebase/database/core/Path;

.field private final optInclusiveEnd:Lcom/google/firebase/database/core/Path;

.field private final snap:Lcom/google/firebase/database/snapshot/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/google/firebase/database/snapshot/RangeMerge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/firebase/database/snapshot/RangeMerge;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/firebase/database/connection/RangeMerge;)V
    .locals 4
    .param p1, "rangeMerge"    # Lcom/google/firebase/database/connection/RangeMerge;

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/RangeMerge;->getOptExclusiveStart()Ljava/util/List;

    move-result-object v1

    .line 45
    .local v1, "optStartPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    new-instance v2, Lcom/google/firebase/database/core/Path;

    invoke-direct {v2, v1}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/util/List;)V

    :goto_0
    iput-object v2, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optExclusiveStart:Lcom/google/firebase/database/core/Path;

    .line 46
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/RangeMerge;->getOptInclusiveEnd()Ljava/util/List;

    move-result-object v0

    .line 47
    .local v0, "optEndPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    new-instance v3, Lcom/google/firebase/database/core/Path;

    invoke-direct {v3, v0}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/util/List;)V

    :cond_0
    iput-object v3, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optInclusiveEnd:Lcom/google/firebase/database/core/Path;

    .line 48
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/RangeMerge;->getSnap()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/database/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->snap:Lcom/google/firebase/database/snapshot/Node;

    .line 49
    return-void

    .end local v0    # "optEndPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    move-object v2, v3

    .line 45
    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 0
    .param p1, "optExclusiveStart"    # Lcom/google/firebase/database/core/Path;
    .param p2, "optInclusiveEnd"    # Lcom/google/firebase/database/core/Path;
    .param p3, "snap"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optExclusiveStart:Lcom/google/firebase/database/core/Path;

    .line 39
    iput-object p2, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optInclusiveEnd:Lcom/google/firebase/database/core/Path;

    .line 40
    iput-object p3, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->snap:Lcom/google/firebase/database/snapshot/Node;

    .line 41
    return-void
.end method

.method private updateRangeInNode(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 16
    .param p1, "currentPath"    # Lcom/google/firebase/database/core/Path;
    .param p2, "node"    # Lcom/google/firebase/database/snapshot/Node;
    .param p3, "updateNode"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 65
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/firebase/database/snapshot/RangeMerge;->optExclusiveStart:Lcom/google/firebase/database/core/Path;

    if-nez v12, :cond_1

    const/4 v9, 0x1

    .line 66
    .local v9, "startComparison":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/firebase/database/snapshot/RangeMerge;->optInclusiveEnd:Lcom/google/firebase/database/core/Path;

    if-nez v12, :cond_2

    const/4 v4, -0x1

    .line 67
    .local v4, "endComparison":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/firebase/database/snapshot/RangeMerge;->optExclusiveStart:Lcom/google/firebase/database/core/Path;

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/firebase/database/snapshot/RangeMerge;->optExclusiveStart:Lcom/google/firebase/database/core/Path;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v10, 0x1

    .line 68
    .local v10, "startInNode":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/firebase/database/snapshot/RangeMerge;->optInclusiveEnd:Lcom/google/firebase/database/core/Path;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/firebase/database/snapshot/RangeMerge;->optInclusiveEnd:Lcom/google/firebase/database/core/Path;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v5, 0x1

    .line 69
    .local v5, "endInNode":Z
    :goto_3
    if-lez v9, :cond_5

    if-gez v4, :cond_5

    if-nez v5, :cond_5

    .line 117
    .end local p3    # "updateNode":Lcom/google/firebase/database/snapshot/Node;
    :cond_0
    :goto_4
    return-object p3

    .line 65
    .end local v4    # "endComparison":I
    .end local v5    # "endInNode":Z
    .end local v9    # "startComparison":I
    .end local v10    # "startInNode":Z
    .restart local p3    # "updateNode":Lcom/google/firebase/database/snapshot/Node;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/firebase/database/snapshot/RangeMerge;->optExclusiveStart:Lcom/google/firebase/database/core/Path;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/google/firebase/database/core/Path;->compareTo(Lcom/google/firebase/database/core/Path;)I

    move-result v9

    goto :goto_0

    .line 66
    .restart local v9    # "startComparison":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/firebase/database/snapshot/RangeMerge;->optInclusiveEnd:Lcom/google/firebase/database/core/Path;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/google/firebase/database/core/Path;->compareTo(Lcom/google/firebase/database/core/Path;)I

    move-result v4

    goto :goto_1

    .line 67
    .restart local v4    # "endComparison":I
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 68
    .restart local v10    # "startInNode":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    .line 72
    .restart local v5    # "endInNode":Z
    :cond_5
    if-lez v9, :cond_6

    if-eqz v5, :cond_6

    invoke-interface/range {p3 .. p3}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v12

    if-nez v12, :cond_0

    .line 74
    :cond_6
    if-lez v9, :cond_a

    if-nez v4, :cond_a

    .line 75
    sget-boolean v12, Lcom/google/firebase/database/snapshot/RangeMerge;->$assertionsDisabled:Z

    if-nez v12, :cond_7

    if-nez v5, :cond_7

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 76
    :cond_7
    sget-boolean v12, Lcom/google/firebase/database/snapshot/RangeMerge;->$assertionsDisabled:Z

    if-nez v12, :cond_8

    invoke-interface/range {p3 .. p3}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v12

    if-eqz v12, :cond_8

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 77
    :cond_8
    invoke-interface/range {p2 .. p2}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 79
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object p3

    goto :goto_4

    :cond_9
    move-object/from16 p3, p2

    .line 82
    goto :goto_4

    .line 84
    :cond_a
    if-nez v10, :cond_b

    if-eqz v5, :cond_12

    .line 87
    :cond_b
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 88
    .local v1, "allChildren":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/database/snapshot/ChildKey;>;"
    invoke-interface/range {p2 .. p2}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 89
    .local v2, "child":Lcom/google/firebase/database/snapshot/NamedNode;
    invoke-virtual {v2}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 91
    .end local v2    # "child":Lcom/google/firebase/database/snapshot/NamedNode;
    :cond_c
    invoke-interface/range {p3 .. p3}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 92
    .restart local v2    # "child":Lcom/google/firebase/database/snapshot/NamedNode;
    invoke-virtual {v2}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 94
    .end local v2    # "child":Lcom/google/firebase/database/snapshot/NamedNode;
    :cond_d
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-direct {v6, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    .local v6, "inOrder":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/snapshot/ChildKey;>;"
    invoke-interface {v6, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 97
    invoke-interface/range {p3 .. p3}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v12

    invoke-interface {v12}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface/range {p2 .. p2}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v12

    invoke-interface {v12}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_f

    .line 98
    :cond_e
    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getPriorityKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_f
    move-object/from16 v8, p2

    .line 101
    .local v8, "newNode":Lcom/google/firebase/database/snapshot/Node;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_10
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 102
    .local v7, "key":Lcom/google/firebase/database/snapshot/ChildKey;
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    .line 105
    .local v3, "currentChild":Lcom/google/firebase/database/snapshot/Node;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v13

    .line 106
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v14

    .line 107
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v15

    .line 104
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/google/firebase/database/snapshot/RangeMerge;->updateRangeInNode(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v11

    .line 109
    .local v11, "updatedChild":Lcom/google/firebase/database/snapshot/Node;
    if-eq v11, v3, :cond_10

    .line 110
    invoke-interface {v8, v7, v11}, Lcom/google/firebase/database/snapshot/Node;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v8

    goto :goto_7

    .end local v3    # "currentChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v7    # "key":Lcom/google/firebase/database/snapshot/ChildKey;
    .end local v11    # "updatedChild":Lcom/google/firebase/database/snapshot/Node;
    :cond_11
    move-object/from16 p3, v8

    .line 113
    goto/16 :goto_4

    .line 116
    .end local v1    # "allChildren":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/database/snapshot/ChildKey;>;"
    .end local v6    # "inOrder":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/snapshot/ChildKey;>;"
    .end local v8    # "newNode":Lcom/google/firebase/database/snapshot/Node;
    :cond_12
    sget-boolean v12, Lcom/google/firebase/database/snapshot/RangeMerge;->$assertionsDisabled:Z

    if-nez v12, :cond_13

    if-gtz v4, :cond_13

    if-lez v9, :cond_13

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    :cond_13
    move-object/from16 p3, p2

    .line 117
    goto/16 :goto_4
.end method


# virtual methods
.method public applyTo(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 2
    .param p1, "node"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 52
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->snap:Lcom/google/firebase/database/snapshot/Node;

    invoke-direct {p0, v0, p1, v1}, Lcom/google/firebase/database/snapshot/RangeMerge;->updateRangeInNode(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method getEnd()Lcom/google/firebase/database/core/Path;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optInclusiveEnd:Lcom/google/firebase/database/core/Path;

    return-object v0
.end method

.method getStart()Lcom/google/firebase/database/core/Path;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optExclusiveStart:Lcom/google/firebase/database/core/Path;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangeMerge{optExclusiveStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optExclusiveStart:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", optInclusiveEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optInclusiveEnd:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", snap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->snap:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
