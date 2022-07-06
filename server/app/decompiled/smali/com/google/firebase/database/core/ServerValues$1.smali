.class Lcom/google/firebase/database/core/ServerValues$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Lcom/google/firebase/database/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/ServerValues;->resolveDeferredValueTree(Lcom/google/firebase/database/core/SparseSnapshotTree;Ljava/util/Map;)Lcom/google/firebase/database/core/SparseSnapshotTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$resolvedTree:Lcom/google/firebase/database/core/SparseSnapshotTree;

.field final synthetic val$serverValues:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/SparseSnapshotTree;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/firebase/database/core/ServerValues$1;->val$resolvedTree:Lcom/google/firebase/database/core/SparseSnapshotTree;

    iput-object p2, p0, Lcom/google/firebase/database/core/ServerValues$1;->val$serverValues:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitTree(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 2
    .param p1, "prefixPath"    # Lcom/google/firebase/database/core/Path;
    .param p2, "tree"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/firebase/database/core/ServerValues$1;->val$resolvedTree:Lcom/google/firebase/database/core/SparseSnapshotTree;

    iget-object v1, p0, Lcom/google/firebase/database/core/ServerValues$1;->val$serverValues:Ljava/util/Map;

    invoke-static {p2, v1}, Lcom/google/firebase/database/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/google/firebase/database/snapshot/Node;Ljava/util/Map;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/core/SparseSnapshotTree;->remember(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    .line 57
    return-void
.end method
