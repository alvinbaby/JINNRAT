.class Lcom/google/firebase/database/core/SparseSnapshotTree;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/core/SparseSnapshotTree$SparseSnapshotChildVisitor;,
        Lcom/google/firebase/database/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;
    }
.end annotation


# instance fields
.field private children:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            "Lcom/google/firebase/database/core/SparseSnapshotTree;",
            ">;"
        }
    .end annotation
.end field

.field private value:Lcom/google/firebase/database/snapshot/Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->value:Lcom/google/firebase/database/snapshot/Node;

    .line 30
    iput-object v0, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->children:Ljava/util/Map;

    .line 31
    return-void
.end method


# virtual methods
.method public forEachChild(Lcom/google/firebase/database/core/SparseSnapshotTree$SparseSnapshotChildVisitor;)V
    .locals 4
    .param p1, "visitor"    # Lcom/google/firebase/database/core/SparseSnapshotTree$SparseSnapshotChildVisitor;

    .prologue
    .line 127
    iget-object v1, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->children:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->children:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 129
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/SparseSnapshotTree;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/SparseSnapshotTree;

    invoke-interface {p1, v1, v2}, Lcom/google/firebase/database/core/SparseSnapshotTree$SparseSnapshotChildVisitor;->visitChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/SparseSnapshotTree;)V

    goto :goto_0

    .line 132
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/SparseSnapshotTree;>;"
    :cond_0
    return-void
.end method

.method public forEachTree(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;)V
    .locals 1
    .param p1, "prefixPath"    # Lcom/google/firebase/database/core/Path;
    .param p2, "visitor"    # Lcom/google/firebase/database/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->value:Lcom/google/firebase/database/snapshot/Node;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->value:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {p2, p1, v0}, Lcom/google/firebase/database/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;->visitTree(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    .line 124
    :goto_0
    return-void

    .line 116
    :cond_0
    new-instance v0, Lcom/google/firebase/database/core/SparseSnapshotTree$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/database/core/SparseSnapshotTree$2;-><init>(Lcom/google/firebase/database/core/SparseSnapshotTree;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/core/SparseSnapshotTree;->forEachChild(Lcom/google/firebase/database/core/SparseSnapshotTree$SparseSnapshotChildVisitor;)V

    goto :goto_0
.end method

.method public forget(Lcom/google/firebase/database/core/Path;)Z
    .locals 9
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 63
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 64
    iput-object v8, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->value:Lcom/google/firebase/database/snapshot/Node;

    .line 65
    iput-object v8, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->children:Ljava/util/Map;

    .line 107
    :cond_0
    :goto_0
    return v5

    .line 68
    :cond_1
    iget-object v7, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->value:Lcom/google/firebase/database/snapshot/Node;

    if-eqz v7, :cond_3

    .line 69
    iget-object v5, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->value:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v5}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    .line 71
    goto :goto_0

    .line 73
    :cond_2
    iget-object v3, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->value:Lcom/google/firebase/database/snapshot/Node;

    check-cast v3, Lcom/google/firebase/database/snapshot/ChildrenNode;

    .line 74
    .local v3, "childrenNode":Lcom/google/firebase/database/snapshot/ChildrenNode;
    iput-object v8, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->value:Lcom/google/firebase/database/snapshot/Node;

    .line 76
    new-instance v5, Lcom/google/firebase/database/core/SparseSnapshotTree$1;

    invoke-direct {v5, p0, p1}, Lcom/google/firebase/database/core/SparseSnapshotTree$1;-><init>(Lcom/google/firebase/database/core/SparseSnapshotTree;Lcom/google/firebase/database/core/Path;)V

    invoke-virtual {v3, v5}, Lcom/google/firebase/database/snapshot/ChildrenNode;->forEachChild(Lcom/google/firebase/database/snapshot/ChildrenNode$ChildVisitor;)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/core/SparseSnapshotTree;->forget(Lcom/google/firebase/database/core/Path;)Z

    move-result v5

    goto :goto_0

    .line 88
    .end local v3    # "childrenNode":Lcom/google/firebase/database/snapshot/ChildrenNode;
    :cond_3
    iget-object v7, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->children:Ljava/util/Map;

    if-eqz v7, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    .line 90
    .local v1, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 92
    .local v2, "childPath":Lcom/google/firebase/database/core/Path;
    iget-object v7, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->children:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 93
    iget-object v7, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->children:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/SparseSnapshotTree;

    .line 94
    .local v0, "child":Lcom/google/firebase/database/core/SparseSnapshotTree;
    invoke-virtual {v0, v2}, Lcom/google/firebase/database/core/SparseSnapshotTree;->forget(Lcom/google/firebase/database/core/Path;)Z

    move-result v4

    .line 95
    .local v4, "safeToRemove":Z
    if-eqz v4, :cond_4

    .line 96
    iget-object v7, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->children:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .end local v0    # "child":Lcom/google/firebase/database/core/SparseSnapshotTree;
    .end local v4    # "safeToRemove":Z
    :cond_4
    iget-object v7, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->children:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 101
    iput-object v8, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->children:Ljava/util/Map;

    goto :goto_0

    :cond_5
    move v5, v6

    .line 104
    goto :goto_0
.end method

.method public remember(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 4
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "data"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    iput-object p2, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->value:Lcom/google/firebase/database/snapshot/Node;

    .line 44
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->children:Ljava/util/Map;

    .line 60
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->value:Lcom/google/firebase/database/snapshot/Node;

    if-eqz v2, :cond_1

    .line 46
    iget-object v2, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->value:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v2, p1, p2}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->value:Lcom/google/firebase/database/snapshot/Node;

    goto :goto_0

    .line 48
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->children:Ljava/util/Map;

    if-nez v2, :cond_2

    .line 49
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->children:Ljava/util/Map;

    .line 52
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    .line 53
    .local v1, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    iget-object v2, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->children:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 54
    iget-object v2, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->children:Ljava/util/Map;

    new-instance v3, Lcom/google/firebase/database/core/SparseSnapshotTree;

    invoke-direct {v3}, Lcom/google/firebase/database/core/SparseSnapshotTree;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_3
    iget-object v2, p0, Lcom/google/firebase/database/core/SparseSnapshotTree;->children:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/SparseSnapshotTree;

    .line 58
    .local v0, "child":Lcom/google/firebase/database/core/SparseSnapshotTree;
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/google/firebase/database/core/SparseSnapshotTree;->remember(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    goto :goto_0
.end method
