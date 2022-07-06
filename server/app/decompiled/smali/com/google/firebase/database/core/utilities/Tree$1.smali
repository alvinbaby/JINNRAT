.class Lcom/google/firebase/database/core/utilities/Tree$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/utilities/Tree;->forEachDescendant(Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/utilities/Tree;

.field final synthetic val$childrenFirst:Z

.field final synthetic val$visitor:Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/utilities/Tree;Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/core/utilities/Tree;

    .prologue
    .line 124
    .local p0, "this":Lcom/google/firebase/database/core/utilities/Tree$1;, "Lcom/google/firebase/database/core/utilities/Tree$1;"
    iput-object p1, p0, Lcom/google/firebase/database/core/utilities/Tree$1;->this$0:Lcom/google/firebase/database/core/utilities/Tree;

    iput-object p2, p0, Lcom/google/firebase/database/core/utilities/Tree$1;->val$visitor:Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;

    iput-boolean p3, p0, Lcom/google/firebase/database/core/utilities/Tree$1;->val$childrenFirst:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitTree(Lcom/google/firebase/database/core/utilities/Tree;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/Tree",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lcom/google/firebase/database/core/utilities/Tree$1;, "Lcom/google/firebase/database/core/utilities/Tree$1;"
    .local p1, "tree":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree$1;->val$visitor:Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/firebase/database/core/utilities/Tree$1;->val$childrenFirst:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/firebase/database/core/utilities/Tree;->forEachDescendant(Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;ZZ)V

    .line 128
    return-void
.end method
