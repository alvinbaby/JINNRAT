.class Lcom/google/firebase/database/core/SparseSnapshotTree$1;
.super Lcom/google/firebase/database/snapshot/ChildrenNode$ChildVisitor;
.source "com.google.firebase:firebase-database@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/SparseSnapshotTree;->forget(Lcom/google/firebase/database/core/Path;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/SparseSnapshotTree;

.field final synthetic val$path:Lcom/google/firebase/database/core/Path;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/SparseSnapshotTree;Lcom/google/firebase/database/core/Path;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/core/SparseSnapshotTree;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/firebase/database/core/SparseSnapshotTree$1;->this$0:Lcom/google/firebase/database/core/SparseSnapshotTree;

    iput-object p2, p0, Lcom/google/firebase/database/core/SparseSnapshotTree$1;->val$path:Lcom/google/firebase/database/core/Path;

    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/ChildrenNode$ChildVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 2
    .param p1, "name"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p2, "child"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/firebase/database/core/SparseSnapshotTree$1;->this$0:Lcom/google/firebase/database/core/SparseSnapshotTree;

    iget-object v1, p0, Lcom/google/firebase/database/core/SparseSnapshotTree$1;->val$path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/firebase/database/core/SparseSnapshotTree;->remember(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    .line 81
    return-void
.end method
