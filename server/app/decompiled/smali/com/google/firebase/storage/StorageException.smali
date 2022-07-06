.class public Lcom/google/firebase/storage/StorageException;
.super Lcom/google/firebase/FirebaseException;
.source "com.google.firebase:firebase-storage@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/StorageException$ErrorCode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ERROR_BUCKET_NOT_FOUND:I = -0x32d3

.field public static final ERROR_CANCELED:I = -0x32f0

.field public static final ERROR_INVALID_CHECKSUM:I = -0x32e7

.field public static final ERROR_NOT_AUTHENTICATED:I = -0x32dc

.field public static final ERROR_NOT_AUTHORIZED:I = -0x32dd

.field public static final ERROR_OBJECT_NOT_FOUND:I = -0x32d2

.field public static final ERROR_PROJECT_NOT_FOUND:I = -0x32d4

.field public static final ERROR_QUOTA_EXCEEDED:I = -0x32d5

.field public static final ERROR_RETRY_LIMIT_EXCEEDED:I = -0x32e6

.field public static final ERROR_UNKNOWN:I = -0x32c8

.field private static final NETWORK_UNAVAILABLE:I = -0x2

.field private static final TAG:Ljava/lang/String; = "StorageException"


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private detailMessage:Ljava/lang/String;

.field private final errorCode:I

.field private final httpResultCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/google/firebase/storage/StorageException;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/firebase/storage/StorageException;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ILjava/lang/Throwable;I)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "inner"    # Ljava/lang/Throwable;
    .param p3, "httpResultCode"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/firebase/FirebaseException;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/google/firebase/storage/StorageException;->getErrorMessageForCode(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/StorageException;->detailMessage:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/google/firebase/storage/StorageException;->cause:Ljava/lang/Throwable;

    .line 51
    iput p1, p0, Lcom/google/firebase/storage/StorageException;->errorCode:I

    .line 52
    iput p3, p0, Lcom/google/firebase/storage/StorageException;->httpResultCode:I

    .line 53
    const-string v0, "StorageException"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StorageException has occurred.\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/storage/StorageException;->detailMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/firebase/storage/StorageException;->errorCode:I

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HttpResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/firebase/storage/StorageException;->httpResultCode:I

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/google/firebase/storage/StorageException;->cause:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "StorageException"

    iget-object v1, p0, Lcom/google/firebase/storage/StorageException;->cause:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/storage/StorageException;->cause:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    :cond_0
    return-void
.end method

.method private static calculateErrorCode(Lcom/google/android/gms/common/api/Status;)I
    .locals 1
    .param p0, "status"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const/16 v0, -0x32f0

    .line 73
    :goto_0
    return v0

    .line 70
    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_TIMEOUT:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const/16 v0, -0x32e6

    goto :goto_0

    .line 73
    :cond_1
    const/16 v0, -0x32c8

    goto :goto_0
.end method

.method private static calculateErrorCode(Ljava/lang/Throwable;I)I
    .locals 1
    .param p0, "inner"    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "httpResultCode"    # I

    .prologue
    .line 77
    instance-of v0, p0, Lcom/google/firebase/storage/CancelException;

    if-eqz v0, :cond_0

    .line 78
    const/16 v0, -0x32f0

    .line 92
    :goto_0
    return v0

    .line 80
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 92
    const/16 v0, -0x32c8

    goto :goto_0

    .line 82
    :sswitch_0
    const/16 v0, -0x32e6

    goto :goto_0

    .line 84
    :sswitch_1
    const/16 v0, -0x32dc

    goto :goto_0

    .line 86
    :sswitch_2
    const/16 v0, -0x32dd

    goto :goto_0

    .line 88
    :sswitch_3
    const/16 v0, -0x32d2

    goto :goto_0

    .line 90
    :sswitch_4
    const/16 v0, -0x32e7

    goto :goto_0

    .line 80
    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_0
        0x191 -> :sswitch_1
        0x193 -> :sswitch_2
        0x194 -> :sswitch_3
        0x199 -> :sswitch_4
    .end sparse-switch
.end method

.method public static fromErrorStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/storage/StorageException;
    .locals 4
    .param p0, "status"    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 100
    new-instance v0, Lcom/google/firebase/storage/StorageException;

    invoke-static {p0}, Lcom/google/firebase/storage/StorageException;->calculateErrorCode(Lcom/google/android/gms/common/api/Status;)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/firebase/storage/StorageException;-><init>(ILjava/lang/Throwable;I)V

    return-object v0

    :cond_0
    move v0, v1

    .line 99
    goto :goto_0
.end method

.method public static fromException(Ljava/lang/Throwable;)Lcom/google/firebase/storage/StorageException;
    .locals 2
    .param p0, "exception"    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 118
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/firebase/storage/StorageException;->fromExceptionAndHttpCode(Ljava/lang/Throwable;I)Lcom/google/firebase/storage/StorageException;

    move-result-object v0

    .line 119
    .local v0, "se":Lcom/google/firebase/storage/StorageException;
    sget-boolean v1, Lcom/google/firebase/storage/StorageException;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 120
    :cond_0
    return-object v0
.end method

.method public static fromExceptionAndHttpCode(Ljava/lang/Throwable;I)Lcom/google/firebase/storage/StorageException;
    .locals 2
    .param p0, "exception"    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "httpResultCode"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 106
    instance-of v0, p0, Lcom/google/firebase/storage/StorageException;

    if-eqz v0, :cond_0

    .line 107
    check-cast p0, Lcom/google/firebase/storage/StorageException;

    .line 112
    .end local p0    # "exception":Ljava/lang/Throwable;
    :goto_0
    return-object p0

    .line 109
    .restart local p0    # "exception":Ljava/lang/Throwable;
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/storage/StorageException;->isResultSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    .line 110
    const/4 p0, 0x0

    goto :goto_0

    .line 112
    :cond_1
    new-instance v0, Lcom/google/firebase/storage/StorageException;

    .line 113
    invoke-static {p0, p1}, Lcom/google/firebase/storage/StorageException;->calculateErrorCode(Ljava/lang/Throwable;I)I

    move-result v1

    invoke-direct {v0, v1, p0, p1}, Lcom/google/firebase/storage/StorageException;-><init>(ILjava/lang/Throwable;I)V

    move-object p0, v0

    .line 112
    goto :goto_0
.end method

.method static getErrorMessageForCode(I)Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 128
    sparse-switch p0, :sswitch_data_0

    .line 153
    const-string v0, "An unknown error occurred, please check the HTTP result code and inner exception for server response."

    :goto_0
    return-object v0

    .line 130
    :sswitch_0
    const-string v0, "An unknown error occurred, please check the HTTP result code and inner exception for server response."

    goto :goto_0

    .line 133
    :sswitch_1
    const-string v0, "Object does not exist at location."

    goto :goto_0

    .line 135
    :sswitch_2
    const-string v0, "Bucket does not exist."

    goto :goto_0

    .line 137
    :sswitch_3
    const-string v0, "Project does not exist."

    goto :goto_0

    .line 139
    :sswitch_4
    const-string v0, "Quota for bucket exceeded, please view quota on www.firebase.google.com/storage."

    goto :goto_0

    .line 142
    :sswitch_5
    const-string v0, "User is not authenticated, please authenticate using Firebase Authentication and try again."

    goto :goto_0

    .line 145
    :sswitch_6
    const-string v0, "User does not have permission to access this object."

    goto :goto_0

    .line 147
    :sswitch_7
    const-string v0, "The operation retry limit has been exceeded."

    goto :goto_0

    .line 149
    :sswitch_8
    const-string v0, "Object has a checksum which does not match. Please retry the operation."

    goto :goto_0

    .line 151
    :sswitch_9
    const-string v0, "The operation was cancelled."

    goto :goto_0

    .line 128
    :sswitch_data_0
    .sparse-switch
        -0x32f0 -> :sswitch_9
        -0x32e7 -> :sswitch_8
        -0x32e6 -> :sswitch_7
        -0x32dd -> :sswitch_6
        -0x32dc -> :sswitch_5
        -0x32d5 -> :sswitch_4
        -0x32d4 -> :sswitch_3
        -0x32d3 -> :sswitch_2
        -0x32d2 -> :sswitch_1
        -0x32c8 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isResultSuccess(I)Z
    .locals 1
    .param p0, "resultCode"    # I

    .prologue
    .line 124
    if-eqz p0, :cond_0

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_1

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getCause()Ljava/lang/Throwable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/storage/StorageException;->cause:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p0, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 175
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/storage/StorageException;->cause:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/google/firebase/storage/StorageException;->errorCode:I

    return v0
.end method

.method public getHttpResultCode()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/google/firebase/storage/StorageException;->httpResultCode:I

    return v0
.end method

.method public getIsRecoverableException()Z
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageException;->getErrorCode()I

    move-result v0

    const/16 v1, -0x32e6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/firebase/storage/StorageException;->detailMessage:Ljava/lang/String;

    return-object v0
.end method
