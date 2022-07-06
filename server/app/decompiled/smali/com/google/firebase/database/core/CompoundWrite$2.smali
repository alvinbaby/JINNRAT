.class Lcom/google/firebase/database/core/CompoundWrite$2;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/CompoundWrite;->getValue(Z)Ljava/util/Map;
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
        "Lcom/google/firebase/database/snapshot/Node;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/CompoundWrite;

.field final synthetic val$exportFormat:Z

.field final synthetic val$writes:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/CompoundWrite;Ljava/util/Map;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/core/CompoundWrite;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/firebase/database/core/CompoundWrite$2;->this$0:Lcom/google/firebase/database/core/CompoundWrite;

    iput-object p2, p0, Lcom/google/firebase/database/core/CompoundWrite$2;->val$writes:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/google/firebase/database/core/CompoundWrite$2;->val$exportFormat:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 264
    check-cast p2, Lcom/google/firebase/database/snapshot/Node;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/database/core/CompoundWrite$2;->onNodeValue(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public onNodeValue(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "relativePath"    # Lcom/google/firebase/database/core/Path;
    .param p2, "value"    # Lcom/google/firebase/database/snapshot/Node;
    .param p3, "accum"    # Ljava/lang/Void;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/firebase/database/core/CompoundWrite$2;->val$writes:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->wireFormat()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/firebase/database/core/CompoundWrite$2;->val$exportFormat:Z

    invoke-interface {p2, v2}, Lcom/google/firebase/database/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const/4 v0, 0x0

    return-object v0
.end method
