.class Lcom/google/firebase/database/android/AndroidAuthTokenProvider$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Lcom/google/firebase/database/core/AuthTokenProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->forAuthenticatedAccess(Lcom/google/firebase/auth/internal/InternalAuthProvider;)Lcom/google/firebase/database/core/AuthTokenProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$authProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/InternalAuthProvider;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$1;->val$authProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$addTokenChangeListener$2(Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;Lcom/google/firebase/internal/InternalTokenResult;)V
    .locals 1
    .param p0, "tokenListener"    # Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;
    .param p1, "tokenResult"    # Lcom/google/firebase/internal/InternalTokenResult;

    .prologue
    .line 56
    invoke-virtual {p1}, Lcom/google/firebase/internal/InternalTokenResult;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;->onTokenChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$addTokenChangeListener$3(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;Lcom/google/firebase/internal/InternalTokenResult;)V
    .locals 1
    .param p0, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p1, "tokenListener"    # Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;
    .param p2, "tokenResult"    # Lcom/google/firebase/internal/InternalTokenResult;

    .prologue
    .line 55
    invoke-static {p1, p2}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$1$$Lambda$4;->lambdaFactory$(Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;Lcom/google/firebase/internal/InternalTokenResult;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$getToken$0(Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;Lcom/google/firebase/auth/GetTokenResult;)V
    .locals 1
    .param p0, "listener"    # Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;
    .param p1, "result"    # Lcom/google/firebase/auth/GetTokenResult;

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/google/firebase/auth/GetTokenResult;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getToken$1(Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "listener"    # Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 41
    invoke-static {p1}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->access$000(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;->onSuccess(Ljava/lang/String;)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addTokenChangeListener(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;)V
    .locals 2
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "tokenListener"    # Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;

    .prologue
    .line 53
    invoke-static {p1, p2}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$1$$Lambda$3;->lambdaFactory$(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;)Lcom/google/firebase/auth/internal/IdTokenListener;

    move-result-object v0

    .line 57
    .local v0, "idTokenListener":Lcom/google/firebase/auth/internal/IdTokenListener;
    iget-object v1, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$1;->val$authProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    invoke-interface {v1, v0}, Lcom/google/firebase/auth/internal/InternalAuthProvider;->addIdTokenListener(Lcom/google/firebase/auth/internal/IdTokenListener;)V

    .line 58
    return-void
.end method

.method public getToken(ZLcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;)V
    .locals 3
    .param p1, "forceRefresh"    # Z
    .param p2, "listener"    # Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    iget-object v1, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$1;->val$authProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    invoke-interface {v1, p1}, Lcom/google/firebase/auth/internal/InternalAuthProvider;->getAccessToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 37
    .local v0, "getTokenResult":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/auth/GetTokenResult;>;"
    invoke-static {p2}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$1$$Lambda$1;->lambdaFactory$(Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;)Lcom/google/android/gms/tasks/OnSuccessListener;

    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    invoke-static {p2}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$1$$Lambda$2;->lambdaFactory$(Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;)Lcom/google/android/gms/tasks/OnFailureListener;

    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 48
    return-void
.end method

.method public removeTokenChangeListener(Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;)V
    .locals 0
    .param p1, "tokenListener"    # Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;

    .prologue
    .line 63
    return-void
.end method
