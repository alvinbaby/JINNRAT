.class Lcom/google/firebase/database/core/RepoManager$3;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/RepoManager;->interruptInternal(Lcom/google/firebase/database/core/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/RepoManager;

.field final synthetic val$ctx:Lcom/google/firebase/database/core/Context;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/RepoManager;Lcom/google/firebase/database/core/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/core/RepoManager;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/firebase/database/core/RepoManager$3;->this$0:Lcom/google/firebase/database/core/RepoManager;

    iput-object p2, p0, Lcom/google/firebase/database/core/RepoManager$3;->val$ctx:Lcom/google/firebase/database/core/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 117
    iget-object v2, p0, Lcom/google/firebase/database/core/RepoManager$3;->this$0:Lcom/google/firebase/database/core/RepoManager;

    invoke-static {v2}, Lcom/google/firebase/database/core/RepoManager;->access$000(Lcom/google/firebase/database/core/RepoManager;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 118
    const/4 v0, 0x1

    .line 119
    .local v0, "allEmpty":Z
    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/database/core/RepoManager$3;->this$0:Lcom/google/firebase/database/core/RepoManager;

    invoke-static {v2}, Lcom/google/firebase/database/core/RepoManager;->access$000(Lcom/google/firebase/database/core/RepoManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lcom/google/firebase/database/core/RepoManager$3;->val$ctx:Lcom/google/firebase/database/core/Context;

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    iget-object v2, p0, Lcom/google/firebase/database/core/RepoManager$3;->this$0:Lcom/google/firebase/database/core/RepoManager;

    invoke-static {v2}, Lcom/google/firebase/database/core/RepoManager;->access$000(Lcom/google/firebase/database/core/RepoManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lcom/google/firebase/database/core/RepoManager$3;->val$ctx:Lcom/google/firebase/database/core/Context;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/Repo;

    .line 121
    .local v1, "repo":Lcom/google/firebase/database/core/Repo;
    invoke-virtual {v1}, Lcom/google/firebase/database/core/Repo;->interrupt()V

    .line 122
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/database/core/Repo;->hasListeners()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    .line 123
    :goto_1
    goto :goto_0

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 124
    .end local v1    # "repo":Lcom/google/firebase/database/core/Repo;
    :cond_1
    if-eqz v0, :cond_2

    .line 125
    iget-object v2, p0, Lcom/google/firebase/database/core/RepoManager$3;->val$ctx:Lcom/google/firebase/database/core/Context;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/Context;->stop()V

    .line 128
    :cond_2
    monitor-exit v3

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
