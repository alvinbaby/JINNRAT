.class Lcom/google/firebase/database/core/view/ViewProcessor$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/view/ViewProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildAfterChild(Lcom/google/firebase/database/snapshot/Index;Lcom/google/firebase/database/snapshot/NamedNode;Z)Lcom/google/firebase/database/snapshot/NamedNode;
    .locals 1
    .param p1, "index"    # Lcom/google/firebase/database/snapshot/Index;
    .param p2, "child"    # Lcom/google/firebase/database/snapshot/NamedNode;
    .param p3, "reverse"    # Z

    .prologue
    .line 678
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCompleteChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1
    .param p1, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;

    .prologue
    .line 673
    const/4 v0, 0x0

    return-object v0
.end method
