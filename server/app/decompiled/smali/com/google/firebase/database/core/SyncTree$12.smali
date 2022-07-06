.class Lcom/google/firebase/database/core/SyncTree$12;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/SyncTree;->removeEventRegistration(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/firebase/database/core/view/Event;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/SyncTree;

.field final synthetic val$cancelError:Lcom/google/firebase/database/DatabaseError;

.field final synthetic val$eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

.field final synthetic val$query:Lcom/google/firebase/database/core/view/QuerySpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 584
    const-class v0, Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/firebase/database/core/SyncTree$12;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/core/SyncTree;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    iput-object p2, p0, Lcom/google/firebase/database/core/SyncTree$12;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    iput-object p3, p0, Lcom/google/firebase/database/core/SyncTree$12;->val$eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

    iput-object p4, p0, Lcom/google/firebase/database/core/SyncTree$12;->val$cancelError:Lcom/google/firebase/database/DatabaseError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/google/firebase/database/core/SyncTree$12;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$12;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v11

    .line 589
    .local v11, "path":Lcom/google/firebase/database/core/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/google/firebase/database/core/SyncTree;->access$700(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/database/core/SyncPoint;

    .line 590
    .local v8, "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v3, "cancelEvents":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Event;>;"
    if-eqz v8, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$12;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    move-object/from16 v20, v0

    .line 596
    invoke-virtual/range {v20 .. v20}, Lcom/google/firebase/database/core/view/QuerySpec;->isDefault()Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$12;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/google/firebase/database/core/SyncPoint;->viewExistsForQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 599
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$12;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$12;->val$eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$12;->val$cancelError:Lcom/google/firebase/database/DatabaseError;

    move-object/from16 v22, v0

    .line 600
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v8, v0, v1, v2}, Lcom/google/firebase/database/core/SyncPoint;->removeEventRegistration(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/core/utilities/Pair;

    move-result-object v15

    .line 601
    .local v15, "removedAndEvents":Lcom/google/firebase/database/core/utilities/Pair;, "Lcom/google/firebase/database/core/utilities/Pair<Ljava/util/List<Lcom/google/firebase/database/core/view/QuerySpec;>;Ljava/util/List<Lcom/google/firebase/database/core/view/Event;>;>;"
    invoke-virtual {v8}, Lcom/google/firebase/database/core/SyncPoint;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/firebase/database/core/SyncTree;->access$700(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->remove(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/google/firebase/database/core/SyncTree;->access$702(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 604
    :cond_1
    invoke-virtual {v15}, Lcom/google/firebase/database/core/utilities/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 605
    .local v14, "removed":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/QuerySpec;>;"
    invoke-virtual {v15}, Lcom/google/firebase/database/core/utilities/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "cancelEvents":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Event;>;"
    check-cast v3, Ljava/util/List;

    .line 612
    .restart local v3    # "cancelEvents":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Event;>;"
    const/16 v16, 0x0

    .line 613
    .local v16, "removingDefault":Z
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/firebase/database/core/view/QuerySpec;

    .line 614
    .local v12, "queryRemoved":Lcom/google/firebase/database/core/view/QuerySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/firebase/database/core/SyncTree;->access$200(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/persistence/PersistenceManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$12;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->setQueryInactive(Lcom/google/firebase/database/core/view/QuerySpec;)V

    .line 615
    if-nez v16, :cond_2

    invoke-virtual {v12}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v21

    if-eqz v21, :cond_3

    :cond_2
    const/16 v16, 0x1

    .line 616
    :goto_1
    goto :goto_0

    .line 615
    :cond_3
    const/16 v16, 0x0

    goto :goto_1

    .line 617
    .end local v12    # "queryRemoved":Lcom/google/firebase/database/core/view/QuerySpec;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/google/firebase/database/core/SyncTree;->access$700(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v7

    .line 619
    .local v7, "currentTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/core/SyncPoint;>;"
    invoke-virtual {v7}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_8

    invoke-virtual {v7}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/firebase/database/core/SyncPoint;

    invoke-virtual/range {v20 .. v20}, Lcom/google/firebase/database/core/SyncPoint;->hasCompleteView()Z

    move-result v20

    if-eqz v20, :cond_8

    const/4 v6, 0x1

    .line 620
    .local v6, "covered":Z
    :goto_2
    invoke-virtual {v11}, Lcom/google/firebase/database/core/Path;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 621
    .local v4, "component":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-virtual {v7, v4}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v7

    .line 622
    if-nez v6, :cond_6

    .line 624
    invoke-virtual {v7}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_9

    .line 625
    invoke-virtual {v7}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/firebase/database/core/SyncPoint;

    invoke-virtual/range {v20 .. v20}, Lcom/google/firebase/database/core/SyncPoint;->hasCompleteView()Z

    move-result v20

    if-eqz v20, :cond_9

    :cond_6
    const/4 v6, 0x1

    .line 626
    :goto_3
    if-nez v6, :cond_7

    invoke-virtual {v7}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 631
    .end local v4    # "component":Lcom/google/firebase/database/snapshot/ChildKey;
    :cond_7
    if-eqz v16, :cond_a

    if-nez v6, :cond_a

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/google/firebase/database/core/SyncTree;->access$700(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->subtree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v17

    .line 635
    .local v17, "subtree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/core/SyncPoint;>;"
    invoke-virtual/range {v17 .. v17}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_a

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/SyncTree;->access$1200(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Ljava/util/List;

    move-result-object v10

    .line 640
    .local v10, "newViews":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/View;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/firebase/database/core/view/View;

    .line 641
    .local v19, "view":Lcom/google/firebase/database/core/view/View;
    new-instance v5, Lcom/google/firebase/database/core/SyncTree$ListenContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Lcom/google/firebase/database/core/SyncTree$ListenContainer;-><init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/View;)V

    .line 642
    .local v5, "container":Lcom/google/firebase/database/core/SyncTree$ListenContainer;
    invoke-virtual/range {v19 .. v19}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v9

    .line 643
    .local v9, "newQuery":Lcom/google/firebase/database/core/view/QuerySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/firebase/database/core/SyncTree;->access$1500(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/SyncTree$ListenProvider;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v22, v0

    .line 644
    move-object/from16 v0, v22

    invoke-static {v0, v9}, Lcom/google/firebase/database/core/SyncTree;->access$1300(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v22

    invoke-static {v5}, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->access$1400(Lcom/google/firebase/database/core/SyncTree$ListenContainer;)Lcom/google/firebase/database/core/Tag;

    move-result-object v23

    .line 643
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2, v5, v5}, Lcom/google/firebase/database/core/SyncTree$ListenProvider;->startListening(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/Tag;Lcom/google/firebase/database/connection/ListenHashProvider;Lcom/google/firebase/database/core/SyncTree$CompletionListener;)V

    goto :goto_4

    .line 619
    .end local v5    # "container":Lcom/google/firebase/database/core/SyncTree$ListenContainer;
    .end local v6    # "covered":Z
    .end local v9    # "newQuery":Lcom/google/firebase/database/core/view/QuerySpec;
    .end local v10    # "newViews":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/View;>;"
    .end local v17    # "subtree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/core/SyncPoint;>;"
    .end local v19    # "view":Lcom/google/firebase/database/core/view/View;
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 625
    .restart local v4    # "component":Lcom/google/firebase/database/snapshot/ChildKey;
    .restart local v6    # "covered":Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_3

    .line 655
    .end local v4    # "component":Lcom/google/firebase/database/snapshot/ChildKey;
    :cond_a
    if-nez v6, :cond_b

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$12;->val$cancelError:Lcom/google/firebase/database/DatabaseError;

    move-object/from16 v20, v0

    if-nez v20, :cond_b

    .line 659
    if-eqz v16, :cond_d

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/google/firebase/database/core/SyncTree;->access$1500(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/SyncTree$ListenProvider;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$12;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/google/firebase/database/core/SyncTree;->access$1300(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/google/firebase/database/core/SyncTree$ListenProvider;->stopListening(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/Tag;)V

    .line 670
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lcom/google/firebase/database/core/SyncTree;->access$1600(Lcom/google/firebase/database/core/SyncTree;Ljava/util/List;)V

    .line 674
    .end local v6    # "covered":Z
    .end local v7    # "currentTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/core/SyncPoint;>;"
    .end local v14    # "removed":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/QuerySpec;>;"
    .end local v15    # "removedAndEvents":Lcom/google/firebase/database/core/utilities/Pair;, "Lcom/google/firebase/database/core/utilities/Pair<Ljava/util/List<Lcom/google/firebase/database/core/view/QuerySpec;>;Ljava/util/List<Lcom/google/firebase/database/core/view/Event;>;>;"
    .end local v16    # "removingDefault":Z
    :cond_c
    return-object v3

    .line 662
    .restart local v6    # "covered":Z
    .restart local v7    # "currentTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/core/SyncPoint;>;"
    .restart local v14    # "removed":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/QuerySpec;>;"
    .restart local v15    # "removedAndEvents":Lcom/google/firebase/database/core/utilities/Pair;, "Lcom/google/firebase/database/core/utilities/Pair<Ljava/util/List<Lcom/google/firebase/database/core/view/QuerySpec;>;Ljava/util/List<Lcom/google/firebase/database/core/view/Event;>;>;"
    .restart local v16    # "removingDefault":Z
    :cond_d
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_b

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/firebase/database/core/view/QuerySpec;

    .line 663
    .local v13, "queryToRemove":Lcom/google/firebase/database/core/view/QuerySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v13}, Lcom/google/firebase/database/core/SyncTree;->access$000(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/Tag;

    move-result-object v18

    .line 664
    .local v18, "tag":Lcom/google/firebase/database/core/Tag;
    sget-boolean v21, Lcom/google/firebase/database/core/SyncTree$12;->$assertionsDisabled:Z

    if-nez v21, :cond_e

    if-nez v18, :cond_e

    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    .line 665
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/firebase/database/core/SyncTree;->access$1500(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/SyncTree$ListenProvider;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v13}, Lcom/google/firebase/database/core/SyncTree;->access$1300(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/core/SyncTree$ListenProvider;->stopListening(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/Tag;)V

    goto :goto_5
.end method
