.class Lcom/google/firebase/storage/ListTask;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "ListTask"


# instance fields
.field private final maxResults:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final pageToken:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Lcom/google/firebase/storage/ListResult;",
            ">;"
        }
    .end annotation
.end field

.field private final sender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

.field private final storageRef:Lcom/google/firebase/storage/StorageReference;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageReference;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 6
    .param p1, "storageRef"    # Lcom/google/firebase/storage/StorageReference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "maxResults"    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "pageToken"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/tasks/TaskCompletionSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageReference;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Lcom/google/firebase/storage/ListResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p4, "pendingResult":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Lcom/google/firebase/storage/ListResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lcom/google/firebase/storage/ListTask;->storageRef:Lcom/google/firebase/storage/StorageReference;

    .line 46
    iput-object p2, p0, Lcom/google/firebase/storage/ListTask;->maxResults:Ljava/lang/Integer;

    .line 47
    iput-object p3, p0, Lcom/google/firebase/storage/ListTask;->pageToken:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/google/firebase/storage/ListTask;->pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 50
    iget-object v1, p0, Lcom/google/firebase/storage/ListTask;->storageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    .line 51
    .local v0, "storage":Lcom/google/firebase/storage/FirebaseStorage;
    new-instance v1, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 53
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 54
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getAuthProvider()Lcom/google/firebase/auth/internal/InternalAuthProvider;

    move-result-object v3

    .line 55
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxDownloadRetryTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;-><init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/InternalAuthProvider;J)V

    iput-object v1, p0, Lcom/google/firebase/storage/ListTask;->sender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 56
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 60
    new-instance v2, Lcom/google/firebase/storage/network/ListNetworkRequest;

    iget-object v3, p0, Lcom/google/firebase/storage/ListTask;->storageRef:Lcom/google/firebase/storage/StorageReference;

    .line 62
    invoke-virtual {v3}, Lcom/google/firebase/storage/StorageReference;->getStorageUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/storage/ListTask;->storageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v4}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v4

    iget-object v5, p0, Lcom/google/firebase/storage/ListTask;->maxResults:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/google/firebase/storage/ListTask;->pageToken:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/firebase/storage/network/ListNetworkRequest;-><init>(Landroid/net/Uri;Lcom/google/firebase/FirebaseApp;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 64
    .local v2, "request":Lcom/google/firebase/storage/network/NetworkRequest;
    iget-object v3, p0, Lcom/google/firebase/storage/ListTask;->sender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v3, v2}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->sendWithExponentialBackoff(Lcom/google/firebase/storage/network/NetworkRequest;)V

    .line 66
    const/4 v1, 0x0

    .line 68
    .local v1, "listResult":Lcom/google/firebase/storage/ListResult;
    invoke-virtual {v2}, Lcom/google/firebase/storage/network/NetworkRequest;->isResultSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    :try_start_0
    iget-object v3, p0, Lcom/google/firebase/storage/ListTask;->storageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v3}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultBody()Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/firebase/storage/ListResult;->fromJSON(Lcom/google/firebase/storage/FirebaseStorage;Lorg/json/JSONObject;)Lcom/google/firebase/storage/ListResult;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 79
    :cond_0
    iget-object v3, p0, Lcom/google/firebase/storage/ListTask;->pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v3, :cond_1

    .line 80
    iget-object v3, p0, Lcom/google/firebase/storage/ListTask;->pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v2, v3, v1}, Lcom/google/firebase/storage/network/NetworkRequest;->completeTask(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;)V

    .line 82
    :cond_1
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "ListTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse response body. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/firebase/storage/network/NetworkRequest;->getRawResult()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    iget-object v3, p0, Lcom/google/firebase/storage/ListTask;->pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageException;->fromException(Ljava/lang/Throwable;)Lcom/google/firebase/storage/StorageException;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
