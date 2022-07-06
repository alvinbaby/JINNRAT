.class Lcom/google/firebase/storage/UpdateMetadataTask;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateMetadataTask"


# instance fields
.field private final mNewMetadata:Lcom/google/firebase/storage/StorageMetadata;

.field private final mPendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Lcom/google/firebase/storage/StorageMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mResultMetadata:Lcom/google/firebase/storage/StorageMetadata;

.field private mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

.field private final mStorageRef:Lcom/google/firebase/storage/StorageReference;


# direct methods
.method public constructor <init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/storage/StorageMetadata;)V
    .locals 6
    .param p1, "storageRef"    # Lcom/google/firebase/storage/StorageReference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/TaskCompletionSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "newMetadata"    # Lcom/google/firebase/storage/StorageMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageReference;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Lcom/google/firebase/storage/StorageMetadata;",
            ">;",
            "Lcom/google/firebase/storage/StorageMetadata;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "pendingResult":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Lcom/google/firebase/storage/StorageMetadata;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mResultMetadata:Lcom/google/firebase/storage/StorageMetadata;

    .line 39
    iput-object p1, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 40
    iput-object p2, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mPendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 41
    iput-object p3, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mNewMetadata:Lcom/google/firebase/storage/StorageMetadata;

    .line 43
    iget-object v1, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    .line 44
    .local v0, "storage":Lcom/google/firebase/storage/FirebaseStorage;
    new-instance v1, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 46
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 47
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getAuthProvider()Lcom/google/firebase/auth/internal/InternalAuthProvider;

    move-result-object v3

    .line 48
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxOperationRetryTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;-><init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/InternalAuthProvider;J)V

    iput-object v1, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 49
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 55
    :try_start_0
    new-instance v1, Lcom/google/firebase/storage/network/UpdateMetadataNetworkRequest;

    iget-object v2, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 57
    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getStorageUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v3}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mNewMetadata:Lcom/google/firebase/storage/StorageMetadata;

    invoke-virtual {v4}, Lcom/google/firebase/storage/StorageMetadata;->createJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/firebase/storage/network/UpdateMetadataNetworkRequest;-><init>(Landroid/net/Uri;Lcom/google/firebase/FirebaseApp;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .local v1, "request":Lcom/google/firebase/storage/network/NetworkRequest;
    iget-object v2, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v2, v1}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->sendWithExponentialBackoff(Lcom/google/firebase/storage/network/NetworkRequest;)V

    .line 66
    invoke-virtual {v1}, Lcom/google/firebase/storage/network/NetworkRequest;->isResultSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    :try_start_1
    new-instance v2, Lcom/google/firebase/storage/StorageMetadata$Builder;

    invoke-virtual {v1}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultBody()Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-direct {v2, v3, v4}, Lcom/google/firebase/storage/StorageMetadata$Builder;-><init>(Lorg/json/JSONObject;Lcom/google/firebase/storage/StorageReference;)V

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageMetadata$Builder;->build()Lcom/google/firebase/storage/StorageMetadata;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mResultMetadata:Lcom/google/firebase/storage/StorageMetadata;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mPendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mPendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v3, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mResultMetadata:Lcom/google/firebase/storage/StorageMetadata;

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/storage/network/NetworkRequest;->completeTask(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;)V

    .line 83
    .end local v1    # "request":Lcom/google/firebase/storage/network/NetworkRequest;
    :cond_1
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "UpdateMetadataTask"

    const-string v3, "Unable to create the request from metadata."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    iget-object v2, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mPendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageException;->fromException(Ljava/lang/Throwable;)Lcom/google/firebase/storage/StorageException;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 69
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "request":Lcom/google/firebase/storage/network/NetworkRequest;
    :catch_1
    move-exception v0

    .line 70
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v2, "UpdateMetadataTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse a valid JSON object from resulting metadata:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 72
    invoke-virtual {v1}, Lcom/google/firebase/storage/network/NetworkRequest;->getRawResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    iget-object v2, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mPendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageException;->fromException(Ljava/lang/Throwable;)Lcom/google/firebase/storage/StorageException;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
