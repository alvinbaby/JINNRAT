.class Lcom/google/firebase/database/core/SyncTree$10;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/SyncTree;->applyTaggedQueryMerge(Lcom/google/firebase/database/core/Path;Ljava/util/Map;Lcom/google/firebase/database/core/Tag;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<+",
        "Lcom/google/firebase/database/core/view/Event;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/SyncTree;

.field final synthetic val$changedChildren:Ljava/util/Map;

.field final synthetic val$path:Lcom/google/firebase/database/core/Path;

.field final synthetic val$tag:Lcom/google/firebase/database/core/Tag;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Tag;Lcom/google/firebase/database/core/Path;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/core/SyncTree;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree$10;->this$0:Lcom/google/firebase/database/core/SyncTree;

    iput-object p2, p0, Lcom/google/firebase/database/core/SyncTree$10;->val$tag:Lcom/google/firebase/database/core/Tag;

    iput-object p3, p0, Lcom/google/firebase/database/core/SyncTree$10;->val$path:Lcom/google/firebase/database/core/Path;

    iput-object p4, p0, Lcom/google/firebase/database/core/SyncTree$10;->val$changedChildren:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/google/firebase/database/core/SyncTree$10;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    iget-object v4, p0, Lcom/google/firebase/database/core/SyncTree$10;->this$0:Lcom/google/firebase/database/core/SyncTree;

    iget-object v5, p0, Lcom/google/firebase/database/core/SyncTree$10;->val$tag:Lcom/google/firebase/database/core/Tag;

    invoke-static {v4, v5}, Lcom/google/firebase/database/core/SyncTree;->access$500(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Tag;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v2

    .line 439
    .local v2, "query":Lcom/google/firebase/database/core/view/QuerySpec;
    if-eqz v2, :cond_0

    .line 440
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v4

    iget-object v5, p0, Lcom/google/firebase/database/core/SyncTree$10;->val$path:Lcom/google/firebase/database/core/Path;

    invoke-static {v4, v5}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v3

    .line 441
    .local v3, "relativePath":Lcom/google/firebase/database/core/Path;
    iget-object v4, p0, Lcom/google/firebase/database/core/SyncTree$10;->val$changedChildren:Ljava/util/Map;

    invoke-static {v4}, Lcom/google/firebase/database/core/CompoundWrite;->fromPathMerge(Ljava/util/Map;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    .line 442
    .local v0, "merge":Lcom/google/firebase/database/core/CompoundWrite;
    iget-object v4, p0, Lcom/google/firebase/database/core/SyncTree$10;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v4}, Lcom/google/firebase/database/core/SyncTree;->access$200(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/persistence/PersistenceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/google/firebase/database/core/SyncTree$10;->val$path:Lcom/google/firebase/database/core/Path;

    invoke-interface {v4, v5, v0}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->updateServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)V

    .line 443
    new-instance v1, Lcom/google/firebase/database/core/operation/Merge;

    .line 445
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/database/core/operation/OperationSource;->forServerTaggedQuery(Lcom/google/firebase/database/core/view/QueryParams;)Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v4

    invoke-direct {v1, v4, v3, v0}, Lcom/google/firebase/database/core/operation/Merge;-><init>(Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)V

    .line 446
    .local v1, "op":Lcom/google/firebase/database/core/operation/Operation;
    iget-object v4, p0, Lcom/google/firebase/database/core/SyncTree$10;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v4, v2, v1}, Lcom/google/firebase/database/core/SyncTree;->access$600(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/operation/Operation;)Ljava/util/List;

    move-result-object v4

    .line 449
    .end local v0    # "merge":Lcom/google/firebase/database/core/CompoundWrite;
    .end local v1    # "op":Lcom/google/firebase/database/core/operation/Operation;
    .end local v3    # "relativePath":Lcom/google/firebase/database/core/Path;
    :goto_0
    return-object v4

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_0
.end method
