.class Lcom/google/firebase/database/core/SyncTree$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/SyncTree;->applyUserOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;JZZ)Ljava/util/List;
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

.field final synthetic val$newData:Lcom/google/firebase/database/snapshot/Node;

.field final synthetic val$newDataUnresolved:Lcom/google/firebase/database/snapshot/Node;

.field final synthetic val$path:Lcom/google/firebase/database/core/Path;

.field final synthetic val$persist:Z

.field final synthetic val$visible:Z

.field final synthetic val$writeId:J


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/SyncTree;ZLcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;JLcom/google/firebase/database/snapshot/Node;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/firebase/database/core/SyncTree;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree$1;->this$0:Lcom/google/firebase/database/core/SyncTree;

    iput-boolean p2, p0, Lcom/google/firebase/database/core/SyncTree$1;->val$persist:Z

    iput-object p3, p0, Lcom/google/firebase/database/core/SyncTree$1;->val$path:Lcom/google/firebase/database/core/Path;

    iput-object p4, p0, Lcom/google/firebase/database/core/SyncTree$1;->val$newDataUnresolved:Lcom/google/firebase/database/snapshot/Node;

    iput-wide p5, p0, Lcom/google/firebase/database/core/SyncTree$1;->val$writeId:J

    iput-object p7, p0, Lcom/google/firebase/database/core/SyncTree$1;->val$newData:Lcom/google/firebase/database/snapshot/Node;

    iput-boolean p8, p0, Lcom/google/firebase/database/core/SyncTree$1;->val$visible:Z

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
    .line 189
    invoke-virtual {p0}, Lcom/google/firebase/database/core/SyncTree$1;->call()Ljava/util/List;

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
    .line 192
    iget-boolean v0, p0, Lcom/google/firebase/database/core/SyncTree$1;->val$persist:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$1;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v0}, Lcom/google/firebase/database/core/SyncTree;->access$200(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/persistence/PersistenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree$1;->val$path:Lcom/google/firebase/database/core/Path;

    iget-object v2, p0, Lcom/google/firebase/database/core/SyncTree$1;->val$newDataUnresolved:Lcom/google/firebase/database/snapshot/Node;

    iget-wide v4, p0, Lcom/google/firebase/database/core/SyncTree$1;->val$writeId:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->saveUserOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;J)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$1;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v0}, Lcom/google/firebase/database/core/SyncTree;->access$300(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/WriteTree;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree$1;->val$path:Lcom/google/firebase/database/core/Path;

    iget-object v2, p0, Lcom/google/firebase/database/core/SyncTree$1;->val$newData:Lcom/google/firebase/database/snapshot/Node;

    iget-wide v4, p0, Lcom/google/firebase/database/core/SyncTree$1;->val$writeId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/firebase/database/core/SyncTree$1;->val$visible:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/firebase/database/core/WriteTree;->addOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/lang/Long;Z)V

    .line 197
    iget-boolean v0, p0, Lcom/google/firebase/database/core/SyncTree$1;->val$visible:Z

    if-nez v0, :cond_1

    .line 198
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$1;->this$0:Lcom/google/firebase/database/core/SyncTree;

    new-instance v1, Lcom/google/firebase/database/core/operation/Overwrite;

    sget-object v2, Lcom/google/firebase/database/core/operation/OperationSource;->USER:Lcom/google/firebase/database/core/operation/OperationSource;

    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$1;->val$path:Lcom/google/firebase/database/core/Path;

    iget-object v4, p0, Lcom/google/firebase/database/core/SyncTree$1;->val$newData:Lcom/google/firebase/database/snapshot/Node;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/firebase/database/core/operation/Overwrite;-><init>(Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/SyncTree;->access$400(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/operation/Operation;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
