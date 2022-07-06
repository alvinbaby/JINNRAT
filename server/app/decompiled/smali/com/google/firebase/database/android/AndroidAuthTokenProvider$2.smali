.class Lcom/google/firebase/database/android/AndroidAuthTokenProvider$2;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Lcom/google/firebase/database/core/AuthTokenProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->forUnauthenticatedAccess()Lcom/google/firebase/database/core/AuthTokenProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$addTokenChangeListener$0(Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;->onTokenChange(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addTokenChangeListener(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;)V
    .locals 1
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "listener"    # Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;

    .prologue
    .line 77
    invoke-static {p2}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$2$$Lambda$1;->lambdaFactory$(Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method

.method public getToken(ZLcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;)V
    .locals 1
    .param p1, "forceRefresh"    # Z
    .param p2, "listener"    # Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;->onSuccess(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public removeTokenChangeListener(Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;

    .prologue
    .line 81
    return-void
.end method
