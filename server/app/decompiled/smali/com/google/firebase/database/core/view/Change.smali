.class public Lcom/google/firebase/database/core/view/Change;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"


# instance fields
.field private final childKey:Lcom/google/firebase/database/snapshot/ChildKey;

.field private final eventType:Lcom/google/firebase/database/core/view/Event$EventType;

.field private final indexedNode:Lcom/google/firebase/database/snapshot/IndexedNode;

.field private final oldIndexedNode:Lcom/google/firebase/database/snapshot/IndexedNode;

.field private final prevName:Lcom/google/firebase/database/snapshot/ChildKey;


# direct methods
.method private constructor <init>(Lcom/google/firebase/database/core/view/Event$EventType;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/IndexedNode;)V
    .locals 0
    .param p1, "eventType"    # Lcom/google/firebase/database/core/view/Event$EventType;
    .param p2, "indexedNode"    # Lcom/google/firebase/database/snapshot/IndexedNode;
    .param p3, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p4, "prevName"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p5, "oldIndexedNode"    # Lcom/google/firebase/database/snapshot/IndexedNode;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/firebase/database/core/view/Change;->eventType:Lcom/google/firebase/database/core/view/Event$EventType;

    .line 36
    iput-object p2, p0, Lcom/google/firebase/database/core/view/Change;->indexedNode:Lcom/google/firebase/database/snapshot/IndexedNode;

    .line 37
    iput-object p3, p0, Lcom/google/firebase/database/core/view/Change;->childKey:Lcom/google/firebase/database/snapshot/ChildKey;

    .line 38
    iput-object p4, p0, Lcom/google/firebase/database/core/view/Change;->prevName:Lcom/google/firebase/database/snapshot/ChildKey;

    .line 39
    iput-object p5, p0, Lcom/google/firebase/database/core/view/Change;->oldIndexedNode:Lcom/google/firebase/database/snapshot/IndexedNode;

    .line 40
    return-void
.end method

.method public static childAddedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/Change;
    .locals 6
    .param p0, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p1, "snapshot"    # Lcom/google/firebase/database/snapshot/IndexedNode;

    .prologue
    const/4 v4, 0x0

    .line 51
    new-instance v0, Lcom/google/firebase/database/core/view/Change;

    sget-object v1, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_ADDED:Lcom/google/firebase/database/core/view/Event$EventType;

    move-object v2, p1

    move-object v3, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/Change;-><init>(Lcom/google/firebase/database/core/view/Event$EventType;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/IndexedNode;)V

    return-object v0
.end method

.method public static childAddedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;
    .locals 1
    .param p0, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p1, "snapshot"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 47
    invoke-static {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/firebase/database/core/view/Change;->childAddedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v0

    return-object v0
.end method

.method public static childChangedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/Change;
    .locals 6
    .param p0, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p1, "newSnapshot"    # Lcom/google/firebase/database/snapshot/IndexedNode;
    .param p2, "oldSnapshot"    # Lcom/google/firebase/database/snapshot/IndexedNode;

    .prologue
    .line 69
    new-instance v0, Lcom/google/firebase/database/core/view/Change;

    sget-object v1, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_CHANGED:Lcom/google/firebase/database/core/view/Event$EventType;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/Change;-><init>(Lcom/google/firebase/database/core/view/Event$EventType;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/IndexedNode;)V

    return-object v0
.end method

.method public static childChangedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;
    .locals 2
    .param p0, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p1, "newSnapshot"    # Lcom/google/firebase/database/snapshot/Node;
    .param p2, "oldSnapshot"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 63
    .line 64
    invoke-static {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    invoke-static {p2}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    .line 63
    invoke-static {p0, v0, v1}, Lcom/google/firebase/database/core/view/Change;->childChangedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v0

    return-object v0
.end method

.method public static childMovedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/Change;
    .locals 6
    .param p0, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p1, "snapshot"    # Lcom/google/firebase/database/snapshot/IndexedNode;

    .prologue
    const/4 v4, 0x0

    .line 77
    new-instance v0, Lcom/google/firebase/database/core/view/Change;

    sget-object v1, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_MOVED:Lcom/google/firebase/database/core/view/Event$EventType;

    move-object v2, p1

    move-object v3, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/Change;-><init>(Lcom/google/firebase/database/core/view/Event$EventType;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/IndexedNode;)V

    return-object v0
.end method

.method public static childMovedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;
    .locals 1
    .param p0, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p1, "snapshot"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 73
    invoke-static {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/firebase/database/core/view/Change;->childMovedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v0

    return-object v0
.end method

.method public static childRemovedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/Change;
    .locals 6
    .param p0, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p1, "snapshot"    # Lcom/google/firebase/database/snapshot/IndexedNode;

    .prologue
    const/4 v4, 0x0

    .line 59
    new-instance v0, Lcom/google/firebase/database/core/view/Change;

    sget-object v1, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_REMOVED:Lcom/google/firebase/database/core/view/Event$EventType;

    move-object v2, p1

    move-object v3, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/Change;-><init>(Lcom/google/firebase/database/core/view/Event$EventType;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/IndexedNode;)V

    return-object v0
.end method

.method public static childRemovedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;
    .locals 1
    .param p0, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p1, "snapshot"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 55
    invoke-static {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/firebase/database/core/view/Change;->childRemovedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v0

    return-object v0
.end method

.method public static valueChange(Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/Change;
    .locals 6
    .param p0, "snapshot"    # Lcom/google/firebase/database/snapshot/IndexedNode;

    .prologue
    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/google/firebase/database/core/view/Change;

    sget-object v1, Lcom/google/firebase/database/core/view/Event$EventType;->VALUE:Lcom/google/firebase/database/core/view/Event$EventType;

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/Change;-><init>(Lcom/google/firebase/database/core/view/Event$EventType;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/IndexedNode;)V

    return-object v0
.end method


# virtual methods
.method public changeWithPrevName(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/view/Change;
    .locals 6
    .param p1, "prevName"    # Lcom/google/firebase/database/snapshot/ChildKey;

    .prologue
    .line 81
    new-instance v0, Lcom/google/firebase/database/core/view/Change;

    iget-object v1, p0, Lcom/google/firebase/database/core/view/Change;->eventType:Lcom/google/firebase/database/core/view/Event$EventType;

    iget-object v2, p0, Lcom/google/firebase/database/core/view/Change;->indexedNode:Lcom/google/firebase/database/snapshot/IndexedNode;

    iget-object v3, p0, Lcom/google/firebase/database/core/view/Change;->childKey:Lcom/google/firebase/database/snapshot/ChildKey;

    iget-object v5, p0, Lcom/google/firebase/database/core/view/Change;->oldIndexedNode:Lcom/google/firebase/database/snapshot/IndexedNode;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/Change;-><init>(Lcom/google/firebase/database/core/view/Event$EventType;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/IndexedNode;)V

    return-object v0
.end method

.method public getChildKey()Lcom/google/firebase/database/snapshot/ChildKey;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/firebase/database/core/view/Change;->childKey:Lcom/google/firebase/database/snapshot/ChildKey;

    return-object v0
.end method

.method public getEventType()Lcom/google/firebase/database/core/view/Event$EventType;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/firebase/database/core/view/Change;->eventType:Lcom/google/firebase/database/core/view/Event$EventType;

    return-object v0
.end method

.method public getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/firebase/database/core/view/Change;->indexedNode:Lcom/google/firebase/database/snapshot/IndexedNode;

    return-object v0
.end method

.method public getOldIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/firebase/database/core/view/Change;->oldIndexedNode:Lcom/google/firebase/database/snapshot/IndexedNode;

    return-object v0
.end method

.method public getPrevName()Lcom/google/firebase/database/snapshot/ChildKey;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/firebase/database/core/view/Change;->prevName:Lcom/google/firebase/database/snapshot/ChildKey;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/view/Change;->eventType:Lcom/google/firebase/database/core/view/Event$EventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/view/Change;->childKey:Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
