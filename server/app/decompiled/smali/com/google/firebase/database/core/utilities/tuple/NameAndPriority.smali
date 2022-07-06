.class public Lcom/google/firebase/database/core/utilities/tuple/NameAndPriority;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/firebase/database/core/utilities/tuple/NameAndPriority;",
        ">;"
    }
.end annotation


# instance fields
.field private name:Lcom/google/firebase/database/snapshot/ChildKey;

.field private priority:Lcom/google/firebase/database/snapshot/Node;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 0
    .param p1, "name"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p2, "priority"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/firebase/database/core/utilities/tuple/NameAndPriority;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    .line 29
    iput-object p2, p0, Lcom/google/firebase/database/core/utilities/tuple/NameAndPriority;->priority:Lcom/google/firebase/database/snapshot/Node;

    .line 30
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/database/core/utilities/tuple/NameAndPriority;)I
    .locals 4
    .param p1, "o"    # Lcom/google/firebase/database/core/utilities/tuple/NameAndPriority;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/tuple/NameAndPriority;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/tuple/NameAndPriority;->priority:Lcom/google/firebase/database/snapshot/Node;

    iget-object v2, p1, Lcom/google/firebase/database/core/utilities/tuple/NameAndPriority;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    iget-object v3, p1, Lcom/google/firebase/database/core/utilities/tuple/NameAndPriority;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-static {v0, v1, v2, v3}, Lcom/google/firebase/database/snapshot/NodeUtilities;->nameAndPriorityCompare(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 21
    check-cast p1, Lcom/google/firebase/database/core/utilities/tuple/NameAndPriority;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/core/utilities/tuple/NameAndPriority;->compareTo(Lcom/google/firebase/database/core/utilities/tuple/NameAndPriority;)I

    move-result v0

    return v0
.end method

.method public getName()Lcom/google/firebase/database/snapshot/ChildKey;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/tuple/NameAndPriority;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    return-object v0
.end method

.method public getPriority()Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/tuple/NameAndPriority;->priority:Lcom/google/firebase/database/snapshot/Node;

    return-object v0
.end method
