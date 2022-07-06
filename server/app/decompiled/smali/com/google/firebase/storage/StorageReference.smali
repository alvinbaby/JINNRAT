.class public Lcom/google/firebase/storage/StorageReference;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.0.0"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/firebase/storage/StorageReference;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "StorageReference"


# instance fields
.field private final mFirebaseStorage:Lcom/google/firebase/storage/FirebaseStorage;

.field private final mStorageUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/firebase/storage/StorageReference;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/net/Uri;Lcom/google/firebase/storage/FirebaseStorage;)V
    .locals 4
    .param p1, "storageUri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "firebaseStorage"    # Lcom/google/firebase/storage/FirebaseStorage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "storageUri cannot be null"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 59
    if-eqz p2, :cond_1

    :goto_1
    const-string v0, "FirebaseApp cannot be null"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 61
    iput-object p1, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    .line 62
    iput-object p2, p0, Lcom/google/firebase/storage/StorageReference;->mFirebaseStorage:Lcom/google/firebase/storage/FirebaseStorage;

    .line 63
    return-void

    :cond_0
    move v0, v2

    .line 58
    goto :goto_0

    :cond_1
    move v1, v2

    .line 59
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/google/firebase/storage/StorageReference;Ljava/lang/Integer;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/storage/StorageReference;
    .param p1, "x1"    # Ljava/lang/Integer;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/StorageReference;->listHelper(Ljava/lang/Integer;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private listHelper(Ljava/lang/Integer;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1, "maxResults"    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "pageToken"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/firebase/storage/ListResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 650
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 651
    .local v0, "pendingResult":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Lcom/google/firebase/storage/ListResult;>;"
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/storage/ListTask;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/firebase/storage/ListTask;-><init>(Lcom/google/firebase/storage/StorageReference;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 652
    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/StorageTaskScheduler;->scheduleCommand(Ljava/lang/Runnable;)V

    .line 653
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;
    .locals 5
    .param p1, "pathString"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 84
    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string v3, "childName cannot be null or empty"

    .line 84
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 87
    invoke-static {p1}, Lcom/google/firebase/storage/internal/Slashes;->normalizeSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 90
    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    .line 92
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 93
    invoke-static {p1}, Lcom/google/firebase/storage/internal/Slashes;->preserveSlashEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 94
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 100
    .local v0, "child":Landroid/net/Uri;
    new-instance v2, Lcom/google/firebase/storage/StorageReference;

    iget-object v3, p0, Lcom/google/firebase/storage/StorageReference;->mFirebaseStorage:Lcom/google/firebase/storage/FirebaseStorage;

    invoke-direct {v2, v0, v3}, Lcom/google/firebase/storage/StorageReference;-><init>(Landroid/net/Uri;Lcom/google/firebase/storage/FirebaseStorage;)V

    return-object v2

    .line 85
    .end local v0    # "child":Landroid/net/Uri;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "StorageReference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create a valid default Uri. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "childName"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public compareTo(Lcom/google/firebase/storage/StorageReference;)I
    .locals 2
    .param p1, "other"    # Lcom/google/firebase/storage/StorageReference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    check-cast p1, Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageReference;->compareTo(Lcom/google/firebase/storage/StorageReference;)I

    move-result v0

    return v0
.end method

.method public delete()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 544
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 545
    .local v0, "pendingResult":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/storage/DeleteStorageTask;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/storage/DeleteStorageTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/StorageTaskScheduler;->scheduleCommand(Ljava/lang/Runnable;)V

    .line 546
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 677
    instance-of v1, p1, Lcom/google/firebase/storage/StorageReference;

    if-nez v1, :cond_0

    .line 678
    const/4 v1, 0x0

    .line 681
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 680
    check-cast v0, Lcom/google/firebase/storage/StorageReference;

    .line 681
    .local v0, "otherStorage":Lcom/google/firebase/storage/StorageReference;
    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageReference;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getActiveDownloadTasks()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/storage/FileDownloadTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskManager;->getInstance()Lcom/google/firebase/storage/StorageTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/storage/StorageTaskManager;->getDownloadTasksUnder(Lcom/google/firebase/storage/StorageReference;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getActiveUploadTasks()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/storage/UploadTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskManager;->getInstance()Lcom/google/firebase/storage/StorageTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/storage/StorageTaskManager;->getUploadTasksUnder(Lcom/google/firebase/storage/StorageReference;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getApp()Lcom/google/firebase/FirebaseApp;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    return-object v0
.end method

.method public getBucket()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(J)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .param p1, "maxDownloadSizeBytes"    # J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/android/gms/tasks/Task",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 419
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 421
    .local v0, "pendingResult":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<[B>;"
    new-instance v1, Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-direct {v1, p0}, Lcom/google/firebase/storage/StreamDownloadTask;-><init>(Lcom/google/firebase/storage/StorageReference;)V

    .line 422
    .local v1, "task":Lcom/google/firebase/storage/StreamDownloadTask;
    new-instance v2, Lcom/google/firebase/storage/StorageReference$3;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/firebase/storage/StorageReference$3;-><init>(Lcom/google/firebase/storage/StorageReference;JLcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/StreamDownloadTask;->setStreamProcessor(Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;)Lcom/google/firebase/storage/StreamDownloadTask;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/storage/StorageReference$2;

    invoke-direct {v3, p0, v0}, Lcom/google/firebase/storage/StorageReference$2;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 449
    invoke-virtual {v2, v3}, Lcom/google/firebase/storage/StreamDownloadTask;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/storage/StorageReference$1;

    invoke-direct {v3, p0, v0}, Lcom/google/firebase/storage/StorageReference$1;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 461
    invoke-virtual {v2, v3}, Lcom/google/firebase/storage/StorageTask;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    .line 470
    invoke-virtual {v1}, Lcom/google/firebase/storage/StreamDownloadTask;->queue()Z

    .line 472
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    return-object v2
.end method

.method public getDownloadUrl()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 380
    .local v0, "pendingResult":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Landroid/net/Uri;>;"
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/storage/GetDownloadUrlTask;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/storage/GetDownloadUrlTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/StorageTaskScheduler;->scheduleCommand(Ljava/lang/Runnable;)V

    .line 381
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method public getFile(Landroid/net/Uri;)Lcom/google/firebase/storage/FileDownloadTask;
    .locals 1
    .param p1, "destinationUri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 485
    new-instance v0, Lcom/google/firebase/storage/FileDownloadTask;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/storage/FileDownloadTask;-><init>(Lcom/google/firebase/storage/StorageReference;Landroid/net/Uri;)V

    .line 486
    .local v0, "task":Lcom/google/firebase/storage/FileDownloadTask;
    invoke-virtual {v0}, Lcom/google/firebase/storage/FileDownloadTask;->queue()Z

    .line 487
    return-object v0
.end method

.method public getFile(Ljava/io/File;)Lcom/google/firebase/storage/FileDownloadTask;
    .locals 1
    .param p1, "destinationFile"    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 499
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/storage/StorageReference;->getFile(Landroid/net/Uri;)Lcom/google/firebase/storage/FileDownloadTask;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/firebase/storage/StorageMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 364
    .local v0, "pendingResult":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Lcom/google/firebase/storage/StorageMetadata;>;"
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/storage/GetMetadataTask;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/storage/GetMetadataTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/StorageTaskScheduler;->scheduleCommand(Ljava/lang/Runnable;)V

    .line 365
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 150
    iget-object v2, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "path":Ljava/lang/String;
    sget-boolean v2, Lcom/google/firebase/storage/StorageReference;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 152
    :cond_0
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 153
    .local v0, "lastIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 154
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getParent()Lcom/google/firebase/storage/StorageReference;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 117
    iget-object v3, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    :cond_0
    const/4 v3, 0x0

    .line 129
    :goto_0
    return-object v3

    .line 121
    :cond_1
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 122
    .local v1, "childIndex":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 123
    const-string v2, "/"

    .line 128
    :goto_1
    iget-object v3, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 129
    .local v0, "child":Landroid/net/Uri;
    new-instance v3, Lcom/google/firebase/storage/StorageReference;

    iget-object v4, p0, Lcom/google/firebase/storage/StorageReference;->mFirebaseStorage:Lcom/google/firebase/storage/FirebaseStorage;

    invoke-direct {v3, v0, v4}, Lcom/google/firebase/storage/StorageReference;-><init>(Landroid/net/Uri;Lcom/google/firebase/storage/FirebaseStorage;)V

    goto :goto_0

    .line 125
    .end local v0    # "child":Landroid/net/Uri;
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getPath()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 166
    iget-object v1, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "path":Ljava/lang/String;
    sget-boolean v1, Lcom/google/firebase/storage/StorageReference;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 168
    :cond_0
    return-object v0
.end method

.method public getRoot()Lcom/google/firebase/storage/StorageReference;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 139
    iget-object v1, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 140
    .local v0, "child":Landroid/net/Uri;
    new-instance v1, Lcom/google/firebase/storage/StorageReference;

    iget-object v2, p0, Lcom/google/firebase/storage/StorageReference;->mFirebaseStorage:Lcom/google/firebase/storage/FirebaseStorage;

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/storage/StorageReference;-><init>(Landroid/net/Uri;Lcom/google/firebase/storage/FirebaseStorage;)V

    return-object v1
.end method

.method public getStorage()Lcom/google/firebase/storage/FirebaseStorage;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference;->mFirebaseStorage:Lcom/google/firebase/storage/FirebaseStorage;

    return-object v0
.end method

.method getStorageUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 661
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getStream()Lcom/google/firebase/storage/StreamDownloadTask;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 512
    new-instance v0, Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-direct {v0, p0}, Lcom/google/firebase/storage/StreamDownloadTask;-><init>(Lcom/google/firebase/storage/StorageReference;)V

    .line 513
    .local v0, "task":Lcom/google/firebase/storage/StreamDownloadTask;
    invoke-virtual {v0}, Lcom/google/firebase/storage/StreamDownloadTask;->queue()Z

    .line 514
    return-object v0
.end method

.method public getStream(Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;)Lcom/google/firebase/storage/StreamDownloadTask;
    .locals 1
    .param p1, "processor"    # Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 528
    new-instance v0, Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-direct {v0, p0}, Lcom/google/firebase/storage/StreamDownloadTask;-><init>(Lcom/google/firebase/storage/StorageReference;)V

    .line 529
    .local v0, "task":Lcom/google/firebase/storage/StreamDownloadTask;
    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/StreamDownloadTask;->setStreamProcessor(Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;)Lcom/google/firebase/storage/StreamDownloadTask;

    .line 530
    invoke-virtual {v0}, Lcom/google/firebase/storage/StreamDownloadTask;->queue()Z

    .line 531
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageReference;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public list(I)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .param p1, "maxResults"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/firebase/storage/ListResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 569
    if-lez p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "maxResults must be greater than zero"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 570
    const/16 v0, 0x3e8

    if-gt p1, v0, :cond_1

    :goto_1
    const-string v0, "maxResults must be at most 1000"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 571
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/storage/StorageReference;->listHelper(Ljava/lang/Integer;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 569
    goto :goto_0

    :cond_1
    move v1, v2

    .line 570
    goto :goto_1
.end method

.method public list(ILjava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .param p1, "maxResults"    # I
    .param p2, "pageToken"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/firebase/storage/ListResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 594
    if-lez p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "maxResults must be greater than zero"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 595
    const/16 v0, 0x3e8

    if-gt p1, v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "maxResults must be at most 1000"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 596
    if-eqz p2, :cond_2

    :goto_2
    const-string v0, "pageToken must be non-null to resume a previous list() operation"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 598
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/storage/StorageReference;->listHelper(Ljava/lang/Integer;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 594
    goto :goto_0

    :cond_1
    move v0, v2

    .line 595
    goto :goto_1

    :cond_2
    move v1, v2

    .line 596
    goto :goto_2
.end method

.method public listAll()Lcom/google/android/gms/tasks/Task;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/firebase/storage/ListResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 617
    new-instance v5, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v5}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 619
    .local v5, "pendingResult":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Lcom/google/firebase/storage/ListResult;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .local v2, "prefixes":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/storage/StorageReference;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 622
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/storage/StorageReference;>;"
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageTaskScheduler;->getCommandPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 623
    .local v4, "executor":Ljava/util/concurrent/Executor;
    invoke-direct {p0, v7, v7}, Lcom/google/firebase/storage/StorageReference;->listHelper(Ljava/lang/Integer;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v6

    .line 625
    .local v6, "list":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/storage/ListResult;>;"
    new-instance v0, Lcom/google/firebase/storage/StorageReference$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/storage/StorageReference$4;-><init>(Lcom/google/firebase/storage/StorageReference;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 644
    .local v0, "continuation":Lcom/google/android/gms/tasks/Continuation;, "Lcom/google/android/gms/tasks/Continuation<Lcom/google/firebase/storage/ListResult;Lcom/google/android/gms/tasks/Task<Ljava/lang/Void;>;>;"
    invoke-virtual {v6, v4, v0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 646
    invoke-virtual {v5}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method public putBytes([B)Lcom/google/firebase/storage/UploadTask;
    .locals 3
    .param p1, "bytes"    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 211
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "bytes cannot be null"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 213
    new-instance v0, Lcom/google/firebase/storage/UploadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/google/firebase/storage/UploadTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;[B)V

    .line 214
    .local v0, "task":Lcom/google/firebase/storage/UploadTask;
    invoke-virtual {v0}, Lcom/google/firebase/storage/UploadTask;->queue()Z

    .line 215
    return-object v0

    .line 211
    .end local v0    # "task":Lcom/google/firebase/storage/UploadTask;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public putBytes([BLcom/google/firebase/storage/StorageMetadata;)Lcom/google/firebase/storage/UploadTask;
    .locals 5
    .param p1, "bytes"    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "metadata"    # Lcom/google/firebase/storage/StorageMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 231
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "bytes cannot be null"

    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 232
    if-eqz p2, :cond_1

    :goto_1
    const-string v1, "metadata cannot be null"

    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 234
    new-instance v0, Lcom/google/firebase/storage/UploadTask;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/firebase/storage/UploadTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;[B)V

    .line 235
    .local v0, "task":Lcom/google/firebase/storage/UploadTask;
    invoke-virtual {v0}, Lcom/google/firebase/storage/UploadTask;->queue()Z

    .line 236
    return-object v0

    .end local v0    # "task":Lcom/google/firebase/storage/UploadTask;
    :cond_0
    move v1, v3

    .line 231
    goto :goto_0

    :cond_1
    move v2, v3

    .line 232
    goto :goto_1
.end method

.method public putFile(Landroid/net/Uri;)Lcom/google/firebase/storage/UploadTask;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 249
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "uri cannot be null"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 251
    new-instance v0, Lcom/google/firebase/storage/UploadTask;

    invoke-direct {v0, p0, v3, p1, v3}, Lcom/google/firebase/storage/UploadTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 252
    .local v0, "task":Lcom/google/firebase/storage/UploadTask;
    invoke-virtual {v0}, Lcom/google/firebase/storage/UploadTask;->queue()Z

    .line 253
    return-object v0

    .line 249
    .end local v0    # "task":Lcom/google/firebase/storage/UploadTask;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public putFile(Landroid/net/Uri;Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/firebase/storage/UploadTask;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "metadata"    # Lcom/google/firebase/storage/StorageMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 268
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "uri cannot be null"

    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 269
    if-eqz p2, :cond_1

    :goto_1
    const-string v1, "metadata cannot be null"

    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 271
    new-instance v0, Lcom/google/firebase/storage/UploadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/google/firebase/storage/UploadTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 272
    .local v0, "task":Lcom/google/firebase/storage/UploadTask;
    invoke-virtual {v0}, Lcom/google/firebase/storage/UploadTask;->queue()Z

    .line 273
    return-object v0

    .end local v0    # "task":Lcom/google/firebase/storage/UploadTask;
    :cond_0
    move v1, v3

    .line 268
    goto :goto_0

    :cond_1
    move v2, v3

    .line 269
    goto :goto_1
.end method

.method public putFile(Landroid/net/Uri;Lcom/google/firebase/storage/StorageMetadata;Landroid/net/Uri;)Lcom/google/firebase/storage/UploadTask;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "metadata"    # Lcom/google/firebase/storage/StorageMetadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "existingUploadUri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 291
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "uri cannot be null"

    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 292
    if-eqz p2, :cond_1

    :goto_1
    const-string v1, "metadata cannot be null"

    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 294
    new-instance v0, Lcom/google/firebase/storage/UploadTask;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/google/firebase/storage/UploadTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 295
    .local v0, "task":Lcom/google/firebase/storage/UploadTask;
    invoke-virtual {v0}, Lcom/google/firebase/storage/UploadTask;->queue()Z

    .line 296
    return-object v0

    .end local v0    # "task":Lcom/google/firebase/storage/UploadTask;
    :cond_0
    move v1, v3

    .line 291
    goto :goto_0

    :cond_1
    move v2, v3

    .line 292
    goto :goto_1
.end method

.method public putStream(Ljava/io/InputStream;)Lcom/google/firebase/storage/UploadTask;
    .locals 3
    .param p1, "stream"    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 309
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "stream cannot be null"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 311
    new-instance v0, Lcom/google/firebase/storage/UploadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/google/firebase/storage/UploadTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;Ljava/io/InputStream;)V

    .line 312
    .local v0, "task":Lcom/google/firebase/storage/UploadTask;
    invoke-virtual {v0}, Lcom/google/firebase/storage/UploadTask;->queue()Z

    .line 313
    return-object v0

    .line 309
    .end local v0    # "task":Lcom/google/firebase/storage/UploadTask;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public putStream(Ljava/io/InputStream;Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/firebase/storage/UploadTask;
    .locals 5
    .param p1, "stream"    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "metadata"    # Lcom/google/firebase/storage/StorageMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 328
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "stream cannot be null"

    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 329
    if-eqz p2, :cond_1

    :goto_1
    const-string v1, "metadata cannot be null"

    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 331
    new-instance v0, Lcom/google/firebase/storage/UploadTask;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/firebase/storage/UploadTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;Ljava/io/InputStream;)V

    .line 332
    .local v0, "task":Lcom/google/firebase/storage/UploadTask;
    invoke-virtual {v0}, Lcom/google/firebase/storage/UploadTask;->queue()Z

    .line 333
    return-object v0

    .end local v0    # "task":Lcom/google/firebase/storage/UploadTask;
    :cond_0
    move v1, v3

    .line 328
    goto :goto_0

    :cond_1
    move v2, v3

    .line 329
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gs://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateMetadata(Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1, "metadata"    # Lcom/google/firebase/storage/StorageMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageMetadata;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/firebase/storage/StorageMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 397
    .local v0, "pendingResult":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Lcom/google/firebase/storage/StorageMetadata;>;"
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/storage/UpdateMetadataTask;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/firebase/storage/UpdateMetadataTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/storage/StorageMetadata;)V

    .line 398
    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/StorageTaskScheduler;->scheduleCommand(Ljava/lang/Runnable;)V

    .line 399
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method
