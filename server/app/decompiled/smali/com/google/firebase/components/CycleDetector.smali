.class Lcom/google/firebase/components/CycleDetector;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/components/CycleDetector$ComponentNode;,
        Lcom/google/firebase/components/CycleDetector$Dep;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static detect(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/components/Component",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "components":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/components/Component<*>;>;"
    invoke-static {p0}, Lcom/google/firebase/components/CycleDetector;->toGraph(Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    .line 101
    .local v2, "graph":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    invoke-static {v2}, Lcom/google/firebase/components/CycleDetector;->getRoots(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    .line 103
    .local v5, "roots":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    const/4 v4, 0x0

    .line 104
    .local v4, "numVisited":I
    :cond_0
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 105
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/components/CycleDetector$ComponentNode;

    .line 106
    .local v3, "node":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    invoke-interface {v5, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v4, v4, 0x1

    .line 109
    invoke-virtual {v3}, Lcom/google/firebase/components/CycleDetector$ComponentNode;->getDependencies()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/components/CycleDetector$ComponentNode;

    .line 110
    .local v1, "dependent":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    invoke-virtual {v1, v3}, Lcom/google/firebase/components/CycleDetector$ComponentNode;->removeDependent(Lcom/google/firebase/components/CycleDetector$ComponentNode;)V

    .line 111
    invoke-virtual {v1}, Lcom/google/firebase/components/CycleDetector$ComponentNode;->isRoot()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 112
    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    .end local v1    # "dependent":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    .end local v3    # "node":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ne v4, v6, :cond_3

    .line 120
    return-void

    .line 124
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "componentsInCycle":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/components/Component<*>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/components/CycleDetector$ComponentNode;

    .line 126
    .restart local v3    # "node":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    invoke-virtual {v3}, Lcom/google/firebase/components/CycleDetector$ComponentNode;->isRoot()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v3}, Lcom/google/firebase/components/CycleDetector$ComponentNode;->isLeaf()Z

    move-result v7

    if-nez v7, :cond_4

    .line 127
    invoke-virtual {v3}, Lcom/google/firebase/components/CycleDetector$ComponentNode;->getComponent()Lcom/google/firebase/components/Component;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
    .end local v3    # "node":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    :cond_5
    new-instance v6, Lcom/google/firebase/components/DependencyCycleException;

    invoke-direct {v6, v0}, Lcom/google/firebase/components/DependencyCycleException;-><init>(Ljava/util/List;)V

    throw v6
.end method

.method private static getRoots(Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/firebase/components/CycleDetector$ComponentNode;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/firebase/components/CycleDetector$ComponentNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "components":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 183
    .local v1, "roots":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/components/CycleDetector$ComponentNode;

    .line 184
    .local v0, "component":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    invoke-virtual {v0}, Lcom/google/firebase/components/CycleDetector$ComponentNode;->isRoot()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    .end local v0    # "component":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    :cond_1
    return-object v1
.end method

.method private static toGraph(Ljava/util/List;)Ljava/util/Set;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/components/Component",
            "<*>;>;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/firebase/components/CycleDetector$ComponentNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "components":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/components/Component<*>;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v3, v11}, Ljava/util/HashMap;-><init>(I)V

    .line 136
    .local v3, "componentIndex":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/components/CycleDetector$Dep;Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/components/Component;

    .line 137
    .local v2, "component":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    new-instance v8, Lcom/google/firebase/components/CycleDetector$ComponentNode;

    invoke-direct {v8, v2}, Lcom/google/firebase/components/CycleDetector$ComponentNode;-><init>(Lcom/google/firebase/components/Component;)V

    .line 138
    .local v8, "node":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    invoke-virtual {v2}, Lcom/google/firebase/components/Component;->getProvidedInterfaces()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 139
    .local v0, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Lcom/google/firebase/components/CycleDetector$Dep;

    invoke-virtual {v2}, Lcom/google/firebase/components/Component;->isValue()Z

    move-result v11

    if-nez v11, :cond_2

    const/4 v11, 0x1

    :goto_1
    const/4 v14, 0x0

    invoke-direct {v1, v0, v11, v14}, Lcom/google/firebase/components/CycleDetector$Dep;-><init>(Ljava/lang/Class;ZLcom/google/firebase/components/CycleDetector$1;)V

    .line 140
    .local v1, "cmp":Lcom/google/firebase/components/CycleDetector$Dep;
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 141
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 144
    .local v9, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {v1}, Lcom/google/firebase/components/CycleDetector$Dep;->access$100(Lcom/google/firebase/components/CycleDetector$Dep;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 145
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Multiple components provide %s."

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v0, v13, v14

    .line 146
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 139
    .end local v1    # "cmp":Lcom/google/firebase/components/CycleDetector$Dep;
    .end local v9    # "nodes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 148
    .restart local v1    # "cmp":Lcom/google/firebase/components/CycleDetector$Dep;
    .restart local v9    # "nodes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    :cond_3
    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    .end local v0    # "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "cmp":Lcom/google/firebase/components/CycleDetector$Dep;
    .end local v2    # "component":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    .end local v8    # "node":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    .end local v9    # "nodes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 153
    .local v4, "componentNodes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/components/CycleDetector$ComponentNode;

    .line 154
    .restart local v8    # "node":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    invoke-virtual {v8}, Lcom/google/firebase/components/CycleDetector$ComponentNode;->getComponent()Lcom/google/firebase/components/Component;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/firebase/components/Component;->getDependencies()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/components/Dependency;

    .line 155
    .local v7, "dependency":Lcom/google/firebase/components/Dependency;
    invoke-virtual {v7}, Lcom/google/firebase/components/Dependency;->isDirectInjection()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 159
    new-instance v14, Lcom/google/firebase/components/CycleDetector$Dep;

    .line 160
    invoke-virtual {v7}, Lcom/google/firebase/components/Dependency;->getInterface()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v7}, Lcom/google/firebase/components/Dependency;->isSet()Z

    move-result v16

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/firebase/components/CycleDetector$Dep;-><init>(Ljava/lang/Class;ZLcom/google/firebase/components/CycleDetector$1;)V

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 161
    .local v6, "depComponents":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    if-eqz v6, :cond_7

    .line 164
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/components/CycleDetector$ComponentNode;

    .line 165
    .local v5, "depComponent":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    invoke-virtual {v8, v5}, Lcom/google/firebase/components/CycleDetector$ComponentNode;->addDependency(Lcom/google/firebase/components/CycleDetector$ComponentNode;)V

    .line 166
    invoke-virtual {v5, v8}, Lcom/google/firebase/components/CycleDetector$ComponentNode;->addDependent(Lcom/google/firebase/components/CycleDetector$ComponentNode;)V

    goto :goto_2

    .line 172
    .end local v4    # "componentNodes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    .end local v5    # "depComponent":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    .end local v6    # "depComponents":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    .end local v7    # "dependency":Lcom/google/firebase/components/Dependency;
    .end local v8    # "node":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    :cond_8
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 173
    .local v10, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 174
    .restart local v4    # "componentNodes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    invoke-virtual {v10, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 177
    .end local v4    # "componentNodes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    :cond_9
    return-object v10
.end method
