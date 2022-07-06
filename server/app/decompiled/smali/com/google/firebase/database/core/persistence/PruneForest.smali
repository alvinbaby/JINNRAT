.class public Lcom/google/firebase/database/core/persistence/PruneForest;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"


# static fields
.field private static final KEEP_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/Predicate",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEEP_TREE:Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/ImmutableTree",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRUNE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/Predicate",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRUNE_TREE:Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/ImmutableTree",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/ImmutableTree",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/google/firebase/database/core/persistence/PruneForest$1;

    invoke-direct {v0}, Lcom/google/firebase/database/core/persistence/PruneForest$1;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/persistence/PruneForest;->KEEP_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    .line 46
    new-instance v0, Lcom/google/firebase/database/core/persistence/PruneForest$2;

    invoke-direct {v0}, Lcom/google/firebase/database/core/persistence/PruneForest$2;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/persistence/PruneForest;->PRUNE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    .line 54
    new-instance v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/firebase/database/core/persistence/PruneForest;->PRUNE_TREE:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 55
    new-instance v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/firebase/database/core/persistence/PruneForest;->KEEP_TREE:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->emptyInstance()Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 59
    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "pruneForest":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 63
    return-void
.end method

.method private doAll(Lcom/google/firebase/database/core/Path;Ljava/util/Set;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/persistence/PruneForest;
    .locals 7
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/google/firebase/database/core/persistence/PruneForest;"
        }
    .end annotation

    .prologue
    .line 173
    .local p2, "children":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/database/snapshot/ChildKey;>;"
    .local p3, "keepOrPruneTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Ljava/lang/Boolean;>;"
    iget-object v3, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v3, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->subtree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v2

    .line 174
    .local v2, "subtree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Ljava/lang/Boolean;>;"
    invoke-virtual {v2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChildren()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    .line 175
    .local v0, "childrenMap":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<Ljava/lang/Boolean;>;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 176
    .local v1, "key":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-virtual {v0, v1, p3}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    .line 177
    goto :goto_0

    .line 178
    .end local v1    # "key":Lcom/google/firebase/database/snapshot/ChildKey;
    :cond_0
    new-instance v4, Lcom/google/firebase/database/core/persistence/PruneForest;

    iget-object v5, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    new-instance v6, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 180
    invoke-virtual {v2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-direct {v6, v3, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    .line 179
    invoke-virtual {v5, p1, v6}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->setTree(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/google/firebase/database/core/persistence/PruneForest;-><init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;)V

    .line 178
    return-object v4
.end method


# virtual methods
.method public affectsPath(Lcom/google/firebase/database/core/Path;)Z
    .locals 1
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->rootMostValue(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 88
    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->subtree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/persistence/PruneForest;
    .locals 2
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .prologue
    .line 104
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    .end local p0    # "this":Lcom/google/firebase/database/core/persistence/PruneForest;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/google/firebase/database/core/persistence/PruneForest;
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/core/persistence/PruneForest;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/persistence/PruneForest;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/persistence/PruneForest;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/persistence/PruneForest;

    move-result-object p0

    goto :goto_0
.end method

.method public child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/persistence/PruneForest;
    .locals 3
    .param p1, "key"    # Lcom/google/firebase/database/snapshot/ChildKey;

    .prologue
    .line 92
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v0

    .line 93
    .local v0, "childPruneTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Ljava/lang/Boolean;>;"
    if-nez v0, :cond_1

    .line 94
    new-instance v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .end local v0    # "childPruneTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    .line 100
    .restart local v0    # "childPruneTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Ljava/lang/Boolean;>;"
    :cond_0
    :goto_0
    new-instance v1, Lcom/google/firebase/database/core/persistence/PruneForest;

    invoke-direct {v1, v0}, Lcom/google/firebase/database/core/persistence/PruneForest;-><init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;)V

    return-object v1

    .line 96
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->set(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 185
    if-ne p0, p1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v1

    .line 188
    :cond_1
    instance-of v3, p1, Lcom/google/firebase/database/core/persistence/PruneForest;

    if-nez v3, :cond_2

    move v1, v2

    .line 189
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 192
    check-cast v0, Lcom/google/firebase/database/core/persistence/PruneForest;

    .line 194
    .local v0, "that":Lcom/google/firebase/database/core/persistence/PruneForest;
    iget-object v3, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    iget-object v4, v0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 195
    goto :goto_0
.end method

.method public foldKeptNodes(Ljava/lang/Object;Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor",
            "<",
            "Ljava/lang/Void;",
            "TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "startValue":Ljava/lang/Object;, "TT;"
    .local p2, "treeVisitor":Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;, "Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor<Ljava/lang/Void;TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    new-instance v1, Lcom/google/firebase/database/core/persistence/PruneForest$3;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/database/core/persistence/PruneForest$3;-><init>(Lcom/google/firebase/database/core/persistence/PruneForest;Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->fold(Ljava/lang/Object;Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->hashCode()I

    move-result v0

    return v0
.end method

.method public keep(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/persistence/PruneForest;
    .locals 3
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .prologue
    .line 140
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    sget-object v2, Lcom/google/firebase/database/core/persistence/PruneForest;->KEEP_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-virtual {v1, p1, v2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->rootMostValueMatching(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    .end local p0    # "this":Lcom/google/firebase/database/core/persistence/PruneForest;
    :goto_0
    return-object p0

    .line 144
    .restart local p0    # "this":Lcom/google/firebase/database/core/persistence/PruneForest;
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    sget-object v2, Lcom/google/firebase/database/core/persistence/PruneForest;->KEEP_TREE:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v1, p1, v2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->setTree(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v0

    .line 145
    .local v0, "newPruneTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Ljava/lang/Boolean;>;"
    new-instance p0, Lcom/google/firebase/database/core/persistence/PruneForest;

    .end local p0    # "this":Lcom/google/firebase/database/core/persistence/PruneForest;
    invoke-direct {p0, v0}, Lcom/google/firebase/database/core/persistence/PruneForest;-><init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;)V

    goto :goto_0
.end method

.method public keepAll(Lcom/google/firebase/database/core/Path;Ljava/util/Set;)Lcom/google/firebase/database/core/persistence/PruneForest;
    .locals 2
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;)",
            "Lcom/google/firebase/database/core/persistence/PruneForest;"
        }
    .end annotation

    .prologue
    .line 150
    .local p2, "children":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/database/snapshot/ChildKey;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    sget-object v1, Lcom/google/firebase/database/core/persistence/PruneForest;->KEEP_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->rootMostValueMatching(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    .end local p0    # "this":Lcom/google/firebase/database/core/persistence/PruneForest;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/google/firebase/database/core/persistence/PruneForest;
    :cond_0
    sget-object v0, Lcom/google/firebase/database/core/persistence/PruneForest;->KEEP_TREE:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/database/core/persistence/PruneForest;->doAll(Lcom/google/firebase/database/core/Path;Ljava/util/Set;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/persistence/PruneForest;

    move-result-object p0

    goto :goto_0
.end method

.method public prune(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/persistence/PruneForest;
    .locals 3
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .prologue
    .line 127
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    sget-object v2, Lcom/google/firebase/database/core/persistence/PruneForest;->KEEP_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-virtual {v1, p1, v2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->rootMostValueMatching(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t prune path that was kept previously!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    sget-object v2, Lcom/google/firebase/database/core/persistence/PruneForest;->PRUNE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-virtual {v1, p1, v2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->rootMostValueMatching(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 135
    .end local p0    # "this":Lcom/google/firebase/database/core/persistence/PruneForest;
    :goto_0
    return-object p0

    .line 134
    .restart local p0    # "this":Lcom/google/firebase/database/core/persistence/PruneForest;
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    sget-object v2, Lcom/google/firebase/database/core/persistence/PruneForest;->PRUNE_TREE:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v1, p1, v2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->setTree(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v0

    .line 135
    .local v0, "newPruneTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Ljava/lang/Boolean;>;"
    new-instance p0, Lcom/google/firebase/database/core/persistence/PruneForest;

    .end local p0    # "this":Lcom/google/firebase/database/core/persistence/PruneForest;
    invoke-direct {p0, v0}, Lcom/google/firebase/database/core/persistence/PruneForest;-><init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;)V

    goto :goto_0
.end method

.method public pruneAll(Lcom/google/firebase/database/core/Path;Ljava/util/Set;)Lcom/google/firebase/database/core/persistence/PruneForest;
    .locals 2
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;)",
            "Lcom/google/firebase/database/core/persistence/PruneForest;"
        }
    .end annotation

    .prologue
    .line 159
    .local p2, "children":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/database/snapshot/ChildKey;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    sget-object v1, Lcom/google/firebase/database/core/persistence/PruneForest;->KEEP_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->rootMostValueMatching(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t prune path that was kept previously!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    sget-object v1, Lcom/google/firebase/database/core/persistence/PruneForest;->PRUNE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->rootMostValueMatching(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    .end local p0    # "this":Lcom/google/firebase/database/core/persistence/PruneForest;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/google/firebase/database/core/persistence/PruneForest;
    :cond_1
    sget-object v0, Lcom/google/firebase/database/core/persistence/PruneForest;->PRUNE_TREE:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/database/core/persistence/PruneForest;->doAll(Lcom/google/firebase/database/core/Path;Ljava/util/Set;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/persistence/PruneForest;

    move-result-object p0

    goto :goto_0
.end method

.method public prunesAnything()Z
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    sget-object v1, Lcom/google/firebase/database/core/persistence/PruneForest;->PRUNE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->containsMatchingValue(Lcom/google/firebase/database/core/utilities/Predicate;)Z

    move-result v0

    return v0
.end method

.method public shouldKeep(Lcom/google/firebase/database/core/Path;)Z
    .locals 2
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->leafMostValue(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 83
    .local v0, "shouldPrune":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public shouldPruneUnkeptDescendants(Lcom/google/firebase/database/core/Path;)Z
    .locals 2
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .prologue
    .line 77
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->leafMostValue(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 78
    .local v0, "shouldPrune":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{PruneForest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
