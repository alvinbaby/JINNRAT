.class Lcom/google/firebase/database/core/persistence/PruneForest$3;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/persistence/PruneForest;->foldKeptNodes(Ljava/lang/Object;Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/persistence/PruneForest;

.field final synthetic val$treeVisitor:Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/persistence/PruneForest;Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/core/persistence/PruneForest;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/firebase/database/core/persistence/PruneForest$3;->this$0:Lcom/google/firebase/database/core/persistence/PruneForest;

    iput-object p2, p0, Lcom/google/firebase/database/core/persistence/PruneForest$3;->val$treeVisitor:Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/lang/Boolean;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "relativePath"    # Lcom/google/firebase/database/core/Path;
    .param p2, "prune"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Ljava/lang/Boolean;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 117
    .local p3, "accum":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest$3;->val$treeVisitor:Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p3}, Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;->onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 120
    .end local p3    # "accum":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object p3
.end method

.method public bridge synthetic onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 114
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/database/core/persistence/PruneForest$3;->onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/lang/Boolean;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
