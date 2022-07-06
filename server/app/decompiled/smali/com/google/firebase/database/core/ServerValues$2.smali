.class Lcom/google/firebase/database/core/ServerValues$2;
.super Lcom/google/firebase/database/snapshot/ChildrenNode$ChildVisitor;
.source "com.google.firebase:firebase-database@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/google/firebase/database/snapshot/Node;Ljava/util/Map;)Lcom/google/firebase/database/snapshot/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$holder:Lcom/google/firebase/database/core/SnapshotHolder;

.field final synthetic val$serverValues:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/firebase/database/core/SnapshotHolder;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/firebase/database/core/ServerValues$2;->val$serverValues:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/firebase/database/core/ServerValues$2;->val$holder:Lcom/google/firebase/database/core/SnapshotHolder;

    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/ChildrenNode$ChildVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 4
    .param p1, "name"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p2, "child"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 89
    iget-object v1, p0, Lcom/google/firebase/database/core/ServerValues$2;->val$serverValues:Ljava/util/Map;

    invoke-static {p2, v1}, Lcom/google/firebase/database/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/google/firebase/database/snapshot/Node;Ljava/util/Map;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 90
    .local v0, "newChildNode":Lcom/google/firebase/database/snapshot/Node;
    if-eq v0, p2, :cond_0

    .line 91
    iget-object v1, p0, Lcom/google/firebase/database/core/ServerValues$2;->val$holder:Lcom/google/firebase/database/core/SnapshotHolder;

    new-instance v2, Lcom/google/firebase/database/core/Path;

    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/database/core/SnapshotHolder;->update(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    .line 93
    :cond_0
    return-void
.end method
