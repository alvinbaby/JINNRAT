.class public Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LEAF_PRIORITY_OVERHEAD:I = 0x18


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static estimateLeafNodeSize(Lcom/google/firebase/database/snapshot/LeafNode;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/LeafNode",
            "<*>;)J"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "node":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<*>;"
    instance-of v2, p0, Lcom/google/firebase/database/snapshot/DoubleNode;

    if-eqz v2, :cond_0

    .line 39
    const-wide/16 v0, 0x8

    .line 49
    .local v0, "valueSize":J
    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/LeafNode;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 52
    .end local v0    # "valueSize":J
    :goto_1
    return-wide v0

    .line 40
    :cond_0
    instance-of v2, p0, Lcom/google/firebase/database/snapshot/LongNode;

    if-eqz v2, :cond_1

    .line 41
    const-wide/16 v0, 0x8

    .restart local v0    # "valueSize":J
    goto :goto_0

    .line 42
    .end local v0    # "valueSize":J
    :cond_1
    instance-of v2, p0, Lcom/google/firebase/database/snapshot/BooleanNode;

    if-eqz v2, :cond_2

    .line 43
    const-wide/16 v0, 0x4

    .restart local v0    # "valueSize":J
    goto :goto_0

    .line 44
    .end local v0    # "valueSize":J
    :cond_2
    instance-of v2, p0, Lcom/google/firebase/database/snapshot/StringNode;

    if-eqz v2, :cond_3

    .line 45
    const-wide/16 v4, 0x2

    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/LeafNode;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long v0, v4, v2

    .restart local v0    # "valueSize":J
    goto :goto_0

    .line 47
    .end local v0    # "valueSize":J
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown leaf node type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    .restart local v0    # "valueSize":J
    :cond_4
    const-wide/16 v2, 0x18

    add-long v4, v2, v0

    .line 54
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/LeafNode;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/snapshot/LeafNode;

    invoke-static {v2}, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;->estimateLeafNodeSize(Lcom/google/firebase/database/snapshot/LeafNode;)J

    move-result-wide v2

    add-long v0, v4, v2

    .line 52
    goto :goto_1
.end method

.method public static estimateSerializedNodeSize(Lcom/google/firebase/database/snapshot/Node;)J
    .locals 8
    .param p0, "node"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    const-wide/16 v4, 0x4

    .line 59
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-wide v2, v4

    .line 75
    .local v2, "sum":J
    :cond_0
    :goto_0
    return-wide v2

    .line 61
    .end local v2    # "sum":J
    :cond_1
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    check-cast p0, Lcom/google/firebase/database/snapshot/LeafNode;

    .end local p0    # "node":Lcom/google/firebase/database/snapshot/Node;
    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;->estimateLeafNodeSize(Lcom/google/firebase/database/snapshot/LeafNode;)J

    move-result-wide v2

    goto :goto_0

    .line 64
    .restart local p0    # "node":Lcom/google/firebase/database/snapshot/Node;
    :cond_2
    sget-boolean v1, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    instance-of v1, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected node type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 65
    :cond_3
    const-wide/16 v2, 0x1

    .line 66
    .restart local v2    # "sum":J
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 67
    .local v0, "entry":Lcom/google/firebase/database/snapshot/NamedNode;
    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 68
    add-long/2addr v2, v4

    .line 69
    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v6

    invoke-static {v6}, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;->estimateSerializedNodeSize(Lcom/google/firebase/database/snapshot/Node;)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 70
    goto :goto_1

    .line 71
    .end local v0    # "entry":Lcom/google/firebase/database/snapshot/NamedNode;
    :cond_4
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const-wide/16 v4, 0xc

    add-long/2addr v2, v4

    .line 73
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/snapshot/LeafNode;

    invoke-static {v1}, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;->estimateLeafNodeSize(Lcom/google/firebase/database/snapshot/LeafNode;)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0
.end method

.method public static nodeCount(Lcom/google/firebase/database/snapshot/Node;)I
    .locals 5
    .param p0, "node"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 80
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    const/4 v1, 0x0

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 82
    :cond_1
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    const/4 v1, 0x1

    goto :goto_0

    .line 85
    :cond_2
    sget-boolean v2, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    instance-of v2, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected node type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 86
    :cond_3
    const/4 v1, 0x0

    .line 87
    .local v1, "sum":I
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 88
    .local v0, "entry":Lcom/google/firebase/database/snapshot/NamedNode;
    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;->nodeCount(Lcom/google/firebase/database/snapshot/Node;)I

    move-result v3

    add-int/2addr v1, v3

    .line 89
    goto :goto_1
.end method
