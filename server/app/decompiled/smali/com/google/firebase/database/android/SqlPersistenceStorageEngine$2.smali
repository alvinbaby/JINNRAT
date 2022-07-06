.class Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$2;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pruneTreeRecursive(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/core/persistence/PruneForest;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;

.field final synthetic val$currentNode:Lcom/google/firebase/database/snapshot/Node;

.field final synthetic val$relativePath:Lcom/google/firebase/database/core/Path;

.field final synthetic val$rowIdsToKeep:Lcom/google/firebase/database/core/utilities/ImmutableTree;

.field final synthetic val$rowsToResaveAccumulator:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;Lcom/google/firebase/database/core/utilities/ImmutableTree;Ljava/util/List;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;

    .prologue
    .line 716
    iput-object p1, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$2;->this$0:Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;

    iput-object p2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$2;->val$rowIdsToKeep:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    iput-object p3, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$2;->val$rowsToResaveAccumulator:Ljava/util/List;

    iput-object p4, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$2;->val$relativePath:Lcom/google/firebase/database/core/Path;

    iput-object p5, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$2;->val$currentNode:Lcom/google/firebase/database/snapshot/Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 716
    check-cast p2, Ljava/lang/Void;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$2;->onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/lang/Void;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/lang/Void;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "keepPath"    # Lcom/google/firebase/database/core/Path;
    .param p2, "ignore"    # Ljava/lang/Void;
    .param p3, "ignore2"    # Ljava/lang/Void;

    .prologue
    .line 720
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$2;->val$rowIdsToKeep:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$2;->val$rowsToResaveAccumulator:Ljava/util/List;

    new-instance v1, Lcom/google/firebase/database/core/utilities/Pair;

    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$2;->val$relativePath:Lcom/google/firebase/database/core/Path;

    .line 723
    invoke-virtual {v2, p1}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$2;->val$currentNode:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v3, p1}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/database/core/utilities/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 721
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
