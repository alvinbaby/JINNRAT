.class Lcom/google/firebase/storage/GetDownloadUrlTask;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DOWNLOAD_TOKENS_KEY:Ljava/lang/String; = "downloadTokens"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "GetMetadataTask"


# instance fields
.field private pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private sender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

.field private storageRef:Lcom/google/firebase/storage/StorageReference;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 6
    .param p1, "storageRef"    # Lcom/google/firebase/storage/StorageReference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/TaskCompletionSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageReference;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "pendingResult":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Landroid/net/Uri;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iput-object p1, p0, Lcom/google/firebase/storage/GetDownloadUrlTask;->storageRef:Lcom/google/firebase/storage/StorageReference;

    .line 44
    iput-object p2, p0, Lcom/google/firebase/storage/GetDownloadUrlTask;->pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 45
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getRoot()Lcom/google/firebase/storage/StorageReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "getDownloadUrl() is not supported at the root of the bucket."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/storage/GetDownloadUrlTask;->storageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    .line 50
    .local v0, "storage":Lcom/google/firebase/storage/FirebaseStorage;
    new-instance v1, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 52
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 53
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getAuthProvider()Lcom/google/firebase/auth/internal/InternalAuthProvider;

    move-result-object v3

    .line 54
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxOperationRetryTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;-><init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/InternalAuthProvider;J)V

    iput-object v1, p0, Lcom/google/firebase/storage/GetDownloadUrlTask;->sender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 55
    return-void
.end method

.method private extractDownloadUrl(Lorg/json/JSONObject;)Landroid/net/Uri;
    .locals 5
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 58
    const-string v3, "downloadTokens"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "downloadTokens":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    const-string v3, ","

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v1, v3, v4

    .line 62
    .local v1, "downloadToken":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/firebase/storage/GetDownloadUrlTask;->storageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v3}, Lcom/google/firebase/storage/StorageReference;->getStorageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/storage/network/NetworkRequest;->getDefaultURL(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "baseURL":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?alt=media&token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 66
    .end local v0    # "baseURL":Ljava/lang/String;
    .end local v1    # "downloadToken":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 71
    new-instance v1, Lcom/google/firebase/storage/network/GetMetadataNetworkRequest;

    iget-object v2, p0, Lcom/google/firebase/storage/GetDownloadUrlTask;->storageRef:Lcom/google/firebase/storage/StorageReference;

    .line 72
    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getStorageUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/storage/GetDownloadUrlTask;->storageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v3}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/storage/network/GetMetadataNetworkRequest;-><init>(Landroid/net/Uri;Lcom/google/firebase/FirebaseApp;)V

    .line 74
    .local v1, "request":Lcom/google/firebase/storage/network/NetworkRequest;
    iget-object v2, p0, Lcom/google/firebase/storage/GetDownloadUrlTask;->sender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v2, v1}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->sendWithExponentialBackoff(Lcom/google/firebase/storage/network/NetworkRequest;)V

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "downloadUrl":Landroid/net/Uri;
    invoke-virtual {v1}, Lcom/google/firebase/storage/network/NetworkRequest;->isResultSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {v1}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultBody()Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/firebase/storage/GetDownloadUrlTask;->extractDownloadUrl(Lorg/json/JSONObject;)Landroid/net/Uri;

    move-result-object v0

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/storage/GetDownloadUrlTask;->pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/google/firebase/storage/GetDownloadUrlTask;->pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/storage/network/NetworkRequest;->completeTask(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;)V

    .line 84
    :cond_1
    return-void
.end method
