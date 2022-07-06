.class public abstract Lcom/google/firebase/database/snapshot/LeafNode;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Lcom/google/firebase/database/snapshot/Node;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/snapshot/LeafNode$LeafType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/firebase/database/snapshot/LeafNode;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/firebase/database/snapshot/Node;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private lazyHash:Ljava/lang/String;

.field protected final priority:Lcom/google/firebase/database/snapshot/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/google/firebase/database/snapshot/LeafNode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/firebase/database/snapshot/LeafNode;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/firebase/database/snapshot/Node;)V
    .locals 0
    .param p1, "priority"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 37
    .local p0, "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/firebase/database/snapshot/LeafNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    .line 39
    return-void
.end method

.method private static compareLongDoubleNodes(Lcom/google/firebase/database/snapshot/LongNode;Lcom/google/firebase/database/snapshot/DoubleNode;)I
    .locals 4
    .param p0, "longNode"    # Lcom/google/firebase/database/snapshot/LongNode;
    .param p1, "doubleNode"    # Lcom/google/firebase/database/snapshot/DoubleNode;

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/LongNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 168
    .local v0, "longDoubleValue":Ljava/lang/Double;
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/DoubleNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v1

    return v1
.end method


# virtual methods
.method protected abstract compareLeafValues(Lcom/google/firebase/database/snapshot/LeafNode;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public compareTo(Lcom/google/firebase/database/snapshot/Node;)I
    .locals 2
    .param p1, "other"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 173
    .local p0, "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x1

    .line 184
    .end local p1    # "other":Lcom/google/firebase/database/snapshot/Node;
    :goto_0
    return v0

    .line 175
    .restart local p1    # "other":Lcom/google/firebase/database/snapshot/Node;
    :cond_0
    instance-of v0, p1, Lcom/google/firebase/database/snapshot/ChildrenNode;

    if-eqz v0, :cond_1

    .line 176
    const/4 v0, -0x1

    goto :goto_0

    .line 178
    :cond_1
    sget-boolean v0, Lcom/google/firebase/database/snapshot/LeafNode;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Node is not leaf node!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 179
    :cond_2
    instance-of v0, p0, Lcom/google/firebase/database/snapshot/LongNode;

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/google/firebase/database/snapshot/DoubleNode;

    if-eqz v0, :cond_3

    .line 180
    check-cast p0, Lcom/google/firebase/database/snapshot/LongNode;

    .end local p0    # "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    check-cast p1, Lcom/google/firebase/database/snapshot/DoubleNode;

    .end local p1    # "other":Lcom/google/firebase/database/snapshot/Node;
    invoke-static {p0, p1}, Lcom/google/firebase/database/snapshot/LeafNode;->compareLongDoubleNodes(Lcom/google/firebase/database/snapshot/LongNode;Lcom/google/firebase/database/snapshot/DoubleNode;)I

    move-result v0

    goto :goto_0

    .line 181
    .restart local p0    # "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    .restart local p1    # "other":Lcom/google/firebase/database/snapshot/Node;
    :cond_3
    instance-of v0, p0, Lcom/google/firebase/database/snapshot/DoubleNode;

    if-eqz v0, :cond_4

    instance-of v0, p1, Lcom/google/firebase/database/snapshot/LongNode;

    if-eqz v0, :cond_4

    .line 182
    check-cast p1, Lcom/google/firebase/database/snapshot/LongNode;

    .end local p1    # "other":Lcom/google/firebase/database/snapshot/Node;
    check-cast p0, Lcom/google/firebase/database/snapshot/DoubleNode;

    .end local p0    # "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    invoke-static {p1, p0}, Lcom/google/firebase/database/snapshot/LeafNode;->compareLongDoubleNodes(Lcom/google/firebase/database/snapshot/LongNode;Lcom/google/firebase/database/snapshot/DoubleNode;)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 184
    .restart local p0    # "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    .restart local p1    # "other":Lcom/google/firebase/database/snapshot/Node;
    :cond_4
    check-cast p1, Lcom/google/firebase/database/snapshot/LeafNode;

    .end local p1    # "other":Lcom/google/firebase/database/snapshot/Node;
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/LeafNode;->leafCompare(Lcom/google/firebase/database/snapshot/LeafNode;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 24
    .local p0, "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    check-cast p1, Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/LeafNode;->compareTo(Lcom/google/firebase/database/snapshot/Node;)I

    move-result v0

    return v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .prologue
    .line 58
    .local p0, "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    .end local p0    # "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    :goto_0
    return-object p0

    .line 60
    .restart local p0    # "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object p0, p0, Lcom/google/firebase/database/snapshot/LeafNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    goto :goto_0

    .line 63
    :cond_1
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object p0

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/LeafNode;->lazyHash:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 135
    sget-object v0, Lcom/google/firebase/database/snapshot/Node$HashVersion;->V1:Lcom/google/firebase/database/snapshot/Node$HashVersion;

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/snapshot/LeafNode;->getHashRepresentation(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Utilities;->sha1HexDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/snapshot/LeafNode;->lazyHash:Ljava/lang/String;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/LeafNode;->lazyHash:Ljava/lang/String;

    return-object v0
.end method

.method public getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1
    .param p1, "name"    # Lcom/google/firebase/database/snapshot/ChildKey;

    .prologue
    .line 102
    .local p0, "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/LeafNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    .line 105
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract getLeafType()Lcom/google/firebase/database/snapshot/LeafNode$LeafType;
.end method

.method public getPredecessorChildKey(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/ChildKey;
    .locals 1
    .param p1, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;

    .prologue
    .line 92
    .local p0, "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/LeafNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    return-object v0
.end method

.method protected getPriorityHash(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;
    .locals 3
    .param p1, "version"    # Lcom/google/firebase/database/snapshot/Node$HashVersion;

    .prologue
    .line 141
    .local p0, "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    sget-object v0, Lcom/google/firebase/database/snapshot/LeafNode$1;->$SwitchMap$com$google$firebase$database$snapshot$Node$HashVersion:[I

    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/Node$HashVersion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown hash version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/LeafNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const-string v0, ""

    .line 147
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "priority:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/LeafNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v1, p1}, Lcom/google/firebase/database/snapshot/Node;->getHashRepresentation(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getSuccessorChildKey(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/ChildKey;
    .locals 1
    .param p1, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;

    .prologue
    .line 97
    .local p0, "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue(Z)Ljava/lang/Object;
    .locals 3
    .param p1, "useExportFormat"    # Z

    .prologue
    .line 111
    .local p0, "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/LeafNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/LeafNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    .line 114
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, ".value"

    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/LeafNode;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, ".priority"

    iget-object v2, p0, Lcom/google/firebase/database/snapshot/LeafNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v2}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z
    .locals 1
    .param p1, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;

    .prologue
    .line 43
    .local p0, "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract hashCode()I
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isLeafNode()Z
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/firebase/database/snapshot/NamedNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected leafCompare(Lcom/google/firebase/database/snapshot/LeafNode;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/LeafNode",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    .local p1, "other":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<*>;"
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/LeafNode;->getLeafType()Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

    move-result-object v1

    .line 193
    .local v1, "thisLeafType":Lcom/google/firebase/database/snapshot/LeafNode$LeafType;
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/LeafNode;->getLeafType()Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

    move-result-object v0

    .line 194
    .local v0, "otherLeafType":Lcom/google/firebase/database/snapshot/LeafNode$LeafType;
    invoke-virtual {v1, v0}, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/LeafNode;->compareLeafValues(Lcom/google/firebase/database/snapshot/LeafNode;)I

    move-result v2

    .line 200
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1, v0}, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    goto :goto_0
.end method

.method public reverseIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/firebase/database/snapshot/NamedNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .local p0, "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    const/16 v3, 0x64

    .line 212
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/firebase/database/snapshot/LeafNode;->getValue(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_0

    .end local v0    # "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "str":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 3
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "node"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 69
    .local p0, "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 70
    .local v0, "front":Lcom/google/firebase/database/snapshot/ChildKey;
    if-nez v0, :cond_0

    .line 76
    .end local p2    # "node":Lcom/google/firebase/database/snapshot/Node;
    :goto_0
    return-object p2

    .line 72
    .restart local p2    # "node":Lcom/google/firebase/database/snapshot/Node;
    :cond_0
    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v1

    if-nez v1, :cond_1

    move-object p2, p0

    .line 73
    goto :goto_0

    .line 75
    :cond_1
    sget-boolean v1, Lcom/google/firebase/database/snapshot/LeafNode;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 76
    :cond_2
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/google/firebase/database/snapshot/EmptyNode;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/database/snapshot/LeafNode;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    goto :goto_0
.end method

.method public updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 2
    .param p1, "name"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p2, "node"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 123
    .local p0, "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0, p2}, Lcom/google/firebase/database/snapshot/LeafNode;->updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p0

    .line 128
    .end local p0    # "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    :cond_0
    :goto_0
    return-object p0

    .line 125
    .restart local p0    # "this":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<TT;>;"
    :cond_1
    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/snapshot/EmptyNode;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/LeafNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v0, v1}, Lcom/google/firebase/database/snapshot/Node;->updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p0

    goto :goto_0
.end method
