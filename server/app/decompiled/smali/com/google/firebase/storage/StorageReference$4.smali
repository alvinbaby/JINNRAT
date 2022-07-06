.class Lcom/google/firebase/storage/StorageReference$4;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/storage/StorageReference;->listAll()Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/Continuation",
        "<",
        "Lcom/google/firebase/storage/ListResult;",
        "Lcom/google/android/gms/tasks/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/storage/StorageReference;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic val$prefixes:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageReference;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/storage/StorageReference;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/google/firebase/storage/StorageReference$4;->this$0:Lcom/google/firebase/storage/StorageReference;

    iput-object p2, p0, Lcom/google/firebase/storage/StorageReference$4;->val$prefixes:Ljava/util/List;

    iput-object p3, p0, Lcom/google/firebase/storage/StorageReference$4;->val$items:Ljava/util/List;

    iput-object p4, p0, Lcom/google/firebase/storage/StorageReference$4;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/google/firebase/storage/StorageReference$4;->val$pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/firebase/storage/ListResult;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "currentPage":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/storage/ListResult;>;"
    const/4 v6, 0x0

    .line 629
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/storage/ListResult;

    .line 630
    .local v1, "result":Lcom/google/firebase/storage/ListResult;
    iget-object v2, p0, Lcom/google/firebase/storage/StorageReference$4;->val$prefixes:Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/firebase/storage/ListResult;->getPrefixes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 631
    iget-object v2, p0, Lcom/google/firebase/storage/StorageReference$4;->val$items:Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/firebase/storage/ListResult;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 633
    invoke-virtual {v1}, Lcom/google/firebase/storage/ListResult;->getPageToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 634
    iget-object v2, p0, Lcom/google/firebase/storage/StorageReference$4;->this$0:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v1}, Lcom/google/firebase/storage/ListResult;->getPageToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v6, v3}, Lcom/google/firebase/storage/StorageReference;->access$000(Lcom/google/firebase/storage/StorageReference;Ljava/lang/Integer;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 635
    .local v0, "nextPage":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/storage/ListResult;>;"
    iget-object v2, p0, Lcom/google/firebase/storage/StorageReference$4;->val$executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, p0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 640
    .end local v0    # "nextPage":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/storage/ListResult;>;"
    :goto_0
    invoke-static {v6}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    return-object v2

    .line 637
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/storage/StorageReference$4;->val$pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v3, Lcom/google/firebase/storage/ListResult;

    iget-object v4, p0, Lcom/google/firebase/storage/StorageReference$4;->val$prefixes:Ljava/util/List;

    iget-object v5, p0, Lcom/google/firebase/storage/StorageReference$4;->val$items:Ljava/util/List;

    invoke-direct {v3, v4, v5, v6}, Lcom/google/firebase/storage/ListResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 626
    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageReference$4;->then(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
