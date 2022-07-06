.class Lcom/google/firebase/database/core/SyncTree$14;
.super Lcom/google/firebase/database/collection/LLRBNode$NodeVisitor;
.source "com.google.firebase:firebase-database@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/SyncTree;->applyOperationDescendantsHelper(Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/database/collection/LLRBNode$NodeVisitor",
        "<",
        "Lcom/google/firebase/database/snapshot/ChildKey;",
        "Lcom/google/firebase/database/core/utilities/ImmutableTree",
        "<",
        "Lcom/google/firebase/database/core/SyncPoint;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/SyncTree;

.field final synthetic val$events:Ljava/util/List;

.field final synthetic val$operation:Lcom/google/firebase/database/core/operation/Operation;

.field final synthetic val$resolvedServerCache:Lcom/google/firebase/database/snapshot/Node;

.field final synthetic val$writesCache:Lcom/google/firebase/database/core/WriteTreeRef;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/operation/Operation;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/core/SyncTree;

    .prologue
    .line 948
    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    iput-object p2, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$resolvedServerCache:Lcom/google/firebase/database/snapshot/Node;

    iput-object p3, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$writesCache:Lcom/google/firebase/database/core/WriteTreeRef;

    iput-object p4, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$operation:Lcom/google/firebase/database/core/operation/Operation;

    iput-object p5, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$events:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/firebase/database/collection/LLRBNode$NodeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitEntry(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree;)V
    .locals 5
    .param p1, "key"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree",
            "<",
            "Lcom/google/firebase/database/core/SyncPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 951
    .local p2, "childTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/core/SyncPoint;>;"
    const/4 v1, 0x0

    .line 952
    .local v1, "childServerCache":Lcom/google/firebase/database/snapshot/Node;
    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$resolvedServerCache:Lcom/google/firebase/database/snapshot/Node;

    if-eqz v3, :cond_0

    .line 953
    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$resolvedServerCache:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v3, p1}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 955
    :cond_0
    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$writesCache:Lcom/google/firebase/database/core/WriteTreeRef;

    invoke-virtual {v3, p1}, Lcom/google/firebase/database/core/WriteTreeRef;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/WriteTreeRef;

    move-result-object v2

    .line 956
    .local v2, "childWritesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$operation:Lcom/google/firebase/database/core/operation/Operation;

    invoke-virtual {v3, p1}, Lcom/google/firebase/database/core/operation/Operation;->operationForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/operation/Operation;

    move-result-object v0

    .line 957
    .local v0, "childOperation":Lcom/google/firebase/database/core/operation/Operation;
    if-eqz v0, :cond_1

    .line 958
    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$events:Ljava/util/List;

    iget-object v4, p0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    .line 959
    invoke-static {v4, v0, p2, v1, v2}, Lcom/google/firebase/database/core/SyncTree;->access$1700(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;)Ljava/util/List;

    move-result-object v4

    .line 958
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 962
    :cond_1
    return-void
.end method

.method public bridge synthetic visitEntry(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 948
    check-cast p1, Lcom/google/firebase/database/snapshot/ChildKey;

    check-cast p2, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/core/SyncTree$14;->visitEntry(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree;)V

    return-void
.end method
