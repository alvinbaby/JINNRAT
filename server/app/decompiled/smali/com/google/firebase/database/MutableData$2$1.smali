.class Lcom/google/firebase/database/MutableData$2$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/MutableData$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/firebase/database/MutableData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/firebase/database/MutableData$2;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/MutableData$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/firebase/database/MutableData$2;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/firebase/database/MutableData$2$1;->this$1:Lcom/google/firebase/database/MutableData$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/firebase/database/MutableData$2$1;->this$1:Lcom/google/firebase/database/MutableData$2;

    iget-object v0, v0, Lcom/google/firebase/database/MutableData$2;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/google/firebase/database/MutableData;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 142
    iget-object v1, p0, Lcom/google/firebase/database/MutableData$2$1;->this$1:Lcom/google/firebase/database/MutableData$2;

    iget-object v1, v1, Lcom/google/firebase/database/MutableData$2;->val$iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 143
    .local v0, "namedNode":Lcom/google/firebase/database/snapshot/NamedNode;
    new-instance v1, Lcom/google/firebase/database/MutableData;

    iget-object v2, p0, Lcom/google/firebase/database/MutableData$2$1;->this$1:Lcom/google/firebase/database/MutableData$2;

    iget-object v2, v2, Lcom/google/firebase/database/MutableData$2;->this$0:Lcom/google/firebase/database/MutableData;

    invoke-static {v2}, Lcom/google/firebase/database/MutableData;->access$000(Lcom/google/firebase/database/MutableData;)Lcom/google/firebase/database/core/SnapshotHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/MutableData$2$1;->this$1:Lcom/google/firebase/database/MutableData$2;

    iget-object v3, v3, Lcom/google/firebase/database/MutableData$2;->this$0:Lcom/google/firebase/database/MutableData;

    invoke-static {v3}, Lcom/google/firebase/database/MutableData;->access$100(Lcom/google/firebase/database/MutableData;)Lcom/google/firebase/database/core/Path;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/firebase/database/MutableData;-><init>(Lcom/google/firebase/database/core/SnapshotHolder;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/MutableData$1;)V

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData$2$1;->next()Lcom/google/firebase/database/MutableData;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove called on immutable collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
