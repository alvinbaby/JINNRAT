.class Lcom/google/firebase/database/snapshot/CompoundHash$1;
.super Lcom/google/firebase/database/snapshot/ChildrenNode$ChildVisitor;
.source "com.google.firebase:firebase-database@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/snapshot/CompoundHash;->processNode(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$state:Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$1;->val$state:Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;

    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/ChildrenNode$ChildVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 1
    .param p1, "name"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p2, "child"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$1;->val$state:Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;

    invoke-static {v0, p1}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->access$400(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;Lcom/google/firebase/database/snapshot/ChildKey;)V

    .line 232
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$1;->val$state:Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;

    invoke-static {p2, v0}, Lcom/google/firebase/database/snapshot/CompoundHash;->access$500(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)V

    .line 233
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$1;->val$state:Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;

    invoke-static {v0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->access$600(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)V

    .line 234
    return-void
.end method
