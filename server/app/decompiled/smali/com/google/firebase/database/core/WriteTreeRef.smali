.class public Lcom/google/firebase/database/core/WriteTreeRef;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"


# instance fields
.field private final treePath:Lcom/google/firebase/database/core/Path;

.field private final writeTree:Lcom/google/firebase/database/core/WriteTree;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTree;)V
    .locals 0
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "writeTree"    # Lcom/google/firebase/database/core/WriteTree;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/firebase/database/core/WriteTreeRef;->treePath:Lcom/google/firebase/database/core/Path;

    .line 48
    iput-object p2, p0, Lcom/google/firebase/database/core/WriteTreeRef;->writeTree:Lcom/google/firebase/database/core/WriteTree;

    .line 49
    return-void
.end method


# virtual methods
.method public calcCompleteChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/view/CacheNode;)Lcom/google/firebase/database/snapshot/Node;
    .locals 2
    .param p1, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p2, "existingServerCache"    # Lcom/google/firebase/database/core/view/CacheNode;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTreeRef;->writeTree:Lcom/google/firebase/database/core/WriteTree;

    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTreeRef;->treePath:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/database/core/WriteTree;->calcCompleteChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/view/CacheNode;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1
    .param p1, "completeServerCache"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1
    .param p1, "completeServerCache"    # Lcom/google/firebase/database/snapshot/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/firebase/database/snapshot/Node;"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "writeIdsToExclude":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;Z)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;Z)Lcom/google/firebase/database/snapshot/Node;
    .locals 2
    .param p1, "completeServerCache"    # Lcom/google/firebase/database/snapshot/Node;
    .param p3, "includeHiddenWrites"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lcom/google/firebase/database/snapshot/Node;"
        }
    .end annotation

    .prologue
    .line 66
    .local p2, "writeIdsToExclude":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTreeRef;->writeTree:Lcom/google/firebase/database/core/WriteTree;

    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTreeRef;->treePath:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/firebase/database/core/WriteTree;->calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;Z)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public calcCompleteEventChildren(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 2
    .param p1, "completeServerChildren"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTreeRef;->writeTree:Lcom/google/firebase/database/core/WriteTree;

    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTreeRef;->treePath:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/database/core/WriteTree;->calcCompleteEventChildren(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public calcEventCacheAfterServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 2
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "existingEventSnap"    # Lcom/google/firebase/database/snapshot/Node;
    .param p3, "existingServerSnap"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTreeRef;->writeTree:Lcom/google/firebase/database/core/WriteTree;

    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTreeRef;->treePath:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/firebase/database/core/WriteTree;->calcEventCacheAfterServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public calcNextNodeAfterPost(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/NamedNode;ZLcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/NamedNode;
    .locals 6
    .param p1, "completeServerData"    # Lcom/google/firebase/database/snapshot/Node;
    .param p2, "startPost"    # Lcom/google/firebase/database/snapshot/NamedNode;
    .param p3, "reverse"    # Z
    .param p4, "index"    # Lcom/google/firebase/database/snapshot/Index;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTreeRef;->writeTree:Lcom/google/firebase/database/core/WriteTree;

    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTreeRef;->treePath:Lcom/google/firebase/database/core/Path;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/database/core/WriteTree;->calcNextNodeAfterPost(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/NamedNode;ZLcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v0

    return-object v0
.end method

.method public child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/WriteTreeRef;
    .locals 3
    .param p1, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;

    .prologue
    .line 128
    new-instance v0, Lcom/google/firebase/database/core/WriteTreeRef;

    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTreeRef;->treePath:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/WriteTreeRef;->writeTree:Lcom/google/firebase/database/core/WriteTree;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/core/WriteTreeRef;-><init>(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTree;)V

    return-object v0
.end method

.method public shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;
    .locals 2
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTreeRef;->writeTree:Lcom/google/firebase/database/core/WriteTree;

    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTreeRef;->treePath:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/WriteTree;->shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method
