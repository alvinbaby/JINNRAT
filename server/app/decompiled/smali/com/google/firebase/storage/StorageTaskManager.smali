.class Lcom/google/firebase/storage/StorageTaskManager;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.0.0"


# static fields
.field private static final _instance:Lcom/google/firebase/storage/StorageTaskManager;


# instance fields
.field private final inProgressTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/firebase/storage/StorageTask",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final syncObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/google/firebase/storage/StorageTaskManager;

    invoke-direct {v0}, Lcom/google/firebase/storage/StorageTaskManager;-><init>()V

    sput-object v0, Lcom/google/firebase/storage/StorageTaskManager;->_instance:Lcom/google/firebase/storage/StorageTaskManager;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTaskManager;->inProgressTasks:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTaskManager;->syncObject:Ljava/lang/Object;

    return-void
.end method

.method static getInstance()Lcom/google/firebase/storage/StorageTaskManager;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/firebase/storage/StorageTaskManager;->_instance:Lcom/google/firebase/storage/StorageTaskManager;

    return-object v0
.end method


# virtual methods
.method public ensureRegistered(Lcom/google/firebase/storage/StorageTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "targetTask":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<*>;"
    iget-object v1, p0, Lcom/google/firebase/storage/StorageTaskManager;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTaskManager;->inProgressTasks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageTask;->getStorage()Lcom/google/firebase/storage/StorageReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    monitor-exit v1

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDownloadTasksUnder(Lcom/google/firebase/storage/StorageReference;)Ljava/util/List;
    .locals 7
    .param p1, "parent"    # Lcom/google/firebase/storage/StorageReference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageReference;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/storage/FileDownloadTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v5, p0, Lcom/google/firebase/storage/StorageTaskManager;->syncObject:Ljava/lang/Object;

    monitor-enter v5

    .line 61
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v1, "inProgressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/firebase/storage/FileDownloadTask;>;"
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "parentPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/firebase/storage/StorageTaskManager;->inProgressTasks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 64
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lcom/google/firebase/storage/StorageTask<*>;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/storage/StorageTask;

    .line 66
    .local v3, "task":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<*>;"
    instance-of v4, v3, Lcom/google/firebase/storage/FileDownloadTask;

    if-eqz v4, :cond_0

    .line 67
    check-cast v3, Lcom/google/firebase/storage/FileDownloadTask;

    .end local v3    # "task":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<*>;"
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lcom/google/firebase/storage/StorageTask<*>;>;>;"
    .end local v1    # "inProgressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/firebase/storage/FileDownloadTask;>;"
    .end local v2    # "parentPath":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 71
    .restart local v1    # "inProgressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/firebase/storage/FileDownloadTask;>;"
    .restart local v2    # "parentPath":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4
.end method

.method public getUploadTasksUnder(Lcom/google/firebase/storage/StorageReference;)Ljava/util/List;
    .locals 7
    .param p1, "parent"    # Lcom/google/firebase/storage/StorageReference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageReference;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/storage/UploadTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v5, p0, Lcom/google/firebase/storage/StorageTaskManager;->syncObject:Ljava/lang/Object;

    monitor-enter v5

    .line 45
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v1, "inProgressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/firebase/storage/UploadTask;>;"
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "parentPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/firebase/storage/StorageTaskManager;->inProgressTasks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 48
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lcom/google/firebase/storage/StorageTask<*>;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/storage/StorageTask;

    .line 50
    .local v3, "task":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<*>;"
    instance-of v4, v3, Lcom/google/firebase/storage/UploadTask;

    if-eqz v4, :cond_0

    .line 51
    check-cast v3, Lcom/google/firebase/storage/UploadTask;

    .end local v3    # "task":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<*>;"
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lcom/google/firebase/storage/StorageTask<*>;>;>;"
    .end local v1    # "inProgressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/firebase/storage/UploadTask;>;"
    .end local v2    # "parentPath":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 55
    .restart local v1    # "inProgressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/firebase/storage/UploadTask;>;"
    .restart local v2    # "parentPath":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4
.end method

.method public unRegister(Lcom/google/firebase/storage/StorageTask;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "targetTask":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<*>;"
    iget-object v4, p0, Lcom/google/firebase/storage/StorageTaskManager;->syncObject:Ljava/lang/Object;

    monitor-enter v4

    .line 85
    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageTask;->getStorage()Lcom/google/firebase/storage/StorageReference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/storage/StorageReference;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/firebase/storage/StorageTaskManager;->inProgressTasks:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 87
    .local v2, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/google/firebase/storage/StorageTask<*>;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/storage/StorageTask;

    move-object v1, v3

    .line 88
    .local v1, "task":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<*>;"
    :goto_0
    if-eqz v1, :cond_0

    if-ne v1, p1, :cond_1

    .line 89
    :cond_0
    iget-object v3, p0, Lcom/google/firebase/storage/StorageTaskManager;->inProgressTasks:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_1
    monitor-exit v4

    .line 92
    return-void

    .line 87
    .end local v1    # "task":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<*>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 91
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/google/firebase/storage/StorageTask<*>;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
