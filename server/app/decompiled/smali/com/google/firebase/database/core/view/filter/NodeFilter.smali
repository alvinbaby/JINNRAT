.class public interface abstract Lcom/google/firebase/database/core/view/filter/NodeFilter;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;
    }
.end annotation


# virtual methods
.method public abstract filtersNodes()Z
.end method

.method public abstract getIndex()Lcom/google/firebase/database/snapshot/Index;
.end method

.method public abstract getIndexedFilter()Lcom/google/firebase/database/core/view/filter/NodeFilter;
.end method

.method public abstract updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;
.end method

.method public abstract updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;
.end method

.method public abstract updatePriority(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;
.end method
