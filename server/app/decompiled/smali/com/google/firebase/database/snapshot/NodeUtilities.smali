.class public Lcom/google/firebase/database/snapshot/NodeUtilities;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NodeFromJSON(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->NullPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/firebase/database/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public static NodeFromJSON(Ljava/lang/Object;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 16
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "priority"    # Lcom/google/firebase/database/snapshot/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .prologue
    .line 33
    :try_start_0
    move-object/from16 v0, p0

    instance-of v13, v0, Ljava/util/Map;

    if-eqz v13, :cond_1

    .line 34
    move-object/from16 v0, p0

    check-cast v0, Ljava/util/Map;

    move-object v11, v0

    .line 35
    .local v11, "mapValue":Ljava/util/Map;
    const-string v13, ".priority"

    invoke-interface {v11, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 36
    const-string v13, ".priority"

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    .line 39
    :cond_0
    const-string v13, ".value"

    invoke-interface {v11, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 40
    const-string v13, ".value"

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 44
    .end local v11    # "mapValue":Ljava/util/Map;
    :cond_1
    if-nez p0, :cond_2

    .line 45
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v12

    .line 99
    :goto_0
    return-object v12

    .line 46
    :cond_2
    move-object/from16 v0, p0

    instance-of v13, v0, Ljava/lang/String;

    if-eqz v13, :cond_3

    .line 47
    new-instance v12, Lcom/google/firebase/database/snapshot/StringNode;

    move-object/from16 v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    move-object/from16 v0, p1

    invoke-direct {v12, v13, v0}, Lcom/google/firebase/database/snapshot/StringNode;-><init>(Ljava/lang/String;Lcom/google/firebase/database/snapshot/Node;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v6

    .line 106
    .local v6, "e":Ljava/lang/ClassCastException;
    new-instance v13, Lcom/google/firebase/database/DatabaseException;

    const-string v14, "Failed to parse node"

    invoke-direct {v13, v14, v6}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 48
    .end local v6    # "e":Ljava/lang/ClassCastException;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    instance-of v13, v0, Ljava/lang/Long;

    if-eqz v13, :cond_4

    .line 49
    new-instance v12, Lcom/google/firebase/database/snapshot/LongNode;

    move-object/from16 v0, p0

    check-cast v0, Ljava/lang/Long;

    move-object v13, v0

    move-object/from16 v0, p1

    invoke-direct {v12, v13, v0}, Lcom/google/firebase/database/snapshot/LongNode;-><init>(Ljava/lang/Long;Lcom/google/firebase/database/snapshot/Node;)V

    goto :goto_0

    .line 50
    :cond_4
    move-object/from16 v0, p0

    instance-of v13, v0, Ljava/lang/Integer;

    if-eqz v13, :cond_5

    .line 51
    new-instance v12, Lcom/google/firebase/database/snapshot/LongNode;

    move-object/from16 v0, p0

    check-cast v0, Ljava/lang/Integer;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-long v14, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-direct {v12, v13, v0}, Lcom/google/firebase/database/snapshot/LongNode;-><init>(Ljava/lang/Long;Lcom/google/firebase/database/snapshot/Node;)V

    goto :goto_0

    .line 52
    :cond_5
    move-object/from16 v0, p0

    instance-of v13, v0, Ljava/lang/Double;

    if-eqz v13, :cond_6

    .line 53
    new-instance v12, Lcom/google/firebase/database/snapshot/DoubleNode;

    move-object/from16 v0, p0

    check-cast v0, Ljava/lang/Double;

    move-object v13, v0

    move-object/from16 v0, p1

    invoke-direct {v12, v13, v0}, Lcom/google/firebase/database/snapshot/DoubleNode;-><init>(Ljava/lang/Double;Lcom/google/firebase/database/snapshot/Node;)V

    goto :goto_0

    .line 54
    :cond_6
    move-object/from16 v0, p0

    instance-of v13, v0, Ljava/lang/Boolean;

    if-eqz v13, :cond_7

    .line 55
    new-instance v12, Lcom/google/firebase/database/snapshot/BooleanNode;

    move-object/from16 v0, p0

    check-cast v0, Ljava/lang/Boolean;

    move-object v13, v0

    move-object/from16 v0, p1

    invoke-direct {v12, v13, v0}, Lcom/google/firebase/database/snapshot/BooleanNode;-><init>(Ljava/lang/Boolean;Lcom/google/firebase/database/snapshot/Node;)V

    goto :goto_0

    .line 56
    :cond_7
    move-object/from16 v0, p0

    instance-of v13, v0, Ljava/util/Map;

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    instance-of v13, v0, Ljava/util/List;

    if-eqz v13, :cond_f

    .line 60
    :cond_8
    move-object/from16 v0, p0

    instance-of v13, v0, Ljava/util/Map;

    if-eqz v13, :cond_b

    .line 61
    move-object/from16 v0, p0

    check-cast v0, Ljava/util/Map;

    move-object v11, v0

    .line 62
    .restart local v11    # "mapValue":Ljava/util/Map;
    const-string v13, ".sv"

    invoke-interface {v11, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 64
    new-instance v12, Lcom/google/firebase/database/snapshot/DeferredValueNode;

    move-object/from16 v0, p1

    invoke-direct {v12, v11, v0}, Lcom/google/firebase/database/snapshot/DeferredValueNode;-><init>(Ljava/util/Map;Lcom/google/firebase/database/snapshot/Node;)V

    .line 65
    .local v12, "node":Lcom/google/firebase/database/snapshot/Node;
    goto/16 :goto_0

    .line 67
    .end local v12    # "node":Lcom/google/firebase/database/snapshot/Node;
    :cond_9
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v13

    invoke-direct {v2, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 69
    .local v2, "childData":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;>;"
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 70
    .local v9, "keyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_a
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 71
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 72
    .local v8, "key":Ljava/lang/String;
    const-string v13, "."

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 73
    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lcom/google/firebase/database/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    .line 74
    .local v4, "childNode":Lcom/google/firebase/database/snapshot/Node;
    invoke-interface {v4}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_a

    .line 75
    invoke-static {v8}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    .line 76
    .local v3, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 82
    .end local v2    # "childData":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;>;"
    .end local v3    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .end local v4    # "childNode":Lcom/google/firebase/database/snapshot/Node;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "keyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "mapValue":Ljava/util/Map;
    :cond_b
    move-object/from16 v0, p0

    check-cast v0, Ljava/util/List;

    move-object v10, v0

    .line 83
    .local v10, "listValue":Ljava/util/List;
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct {v2, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 84
    .restart local v2    # "childData":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v7, v13, :cond_d

    .line 85
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 86
    .restart local v8    # "key":Ljava/lang/String;
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lcom/google/firebase/database/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    .line 87
    .restart local v4    # "childNode":Lcom/google/firebase/database/snapshot/Node;
    invoke-interface {v4}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_c

    .line 88
    invoke-static {v8}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    .line 89
    .restart local v3    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .end local v3    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 94
    .end local v4    # "childNode":Lcom/google/firebase/database/snapshot/Node;
    .end local v7    # "i":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v10    # "listValue":Ljava/util/List;
    :cond_d
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 95
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v12

    goto/16 :goto_0

    .line 97
    :cond_e
    sget-object v13, Lcom/google/firebase/database/snapshot/ChildrenNode;->NAME_ONLY_COMPARATOR:Ljava/util/Comparator;

    .line 98
    invoke-static {v2, v13}, Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder;->fromMap(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v5

    .line 99
    .local v5, "childSet":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;>;"
    new-instance v12, Lcom/google/firebase/database/snapshot/ChildrenNode;

    move-object/from16 v0, p1

    invoke-direct {v12, v5, v0}, Lcom/google/firebase/database/snapshot/ChildrenNode;-><init>(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/database/snapshot/Node;)V

    goto/16 :goto_0

    .line 102
    .end local v2    # "childData":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;>;"
    .end local v5    # "childSet":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;>;"
    :cond_f
    new-instance v13, Lcom/google/firebase/database/DatabaseException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to parse node with class "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 103
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public static nameAndPriorityCompare(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)I
    .locals 1
    .param p0, "aKey"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p1, "aPriority"    # Lcom/google/firebase/database/snapshot/Node;
    .param p2, "bKey"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p3, "bPriority"    # Lcom/google/firebase/database/snapshot/Node;

    .prologue
    .line 113
    invoke-interface {p1, p3}, Lcom/google/firebase/database/snapshot/Node;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 114
    .local v0, "priCmp":I
    if-eqz v0, :cond_0

    .line 117
    .end local v0    # "priCmp":I
    :goto_0
    return v0

    .restart local v0    # "priCmp":I
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/firebase/database/snapshot/ChildKey;->compareTo(Lcom/google/firebase/database/snapshot/ChildKey;)I

    move-result v0

    goto :goto_0
.end method
