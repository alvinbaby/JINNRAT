.class Lcom/google/firebase/database/core/Context$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Context;->lambda$wrapAuthTokenProvider$0(Lcom/google/firebase/database/core/AuthTokenProvider;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/google/firebase/database/connection/ConnectionAuthTokenProvider$GetTokenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider$GetTokenCallback;

.field final synthetic val$executorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider$GetTokenCallback;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/google/firebase/database/core/Context$1;->val$executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lcom/google/firebase/database/core/Context$1;->val$callback:Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider$GetTokenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onError$1(Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider$GetTokenCallback;Ljava/lang/String;)V
    .locals 0
    .param p0, "callback"    # Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider$GetTokenCallback;
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-interface {p0, p1}, Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider$GetTokenCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onSuccess$0(Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider$GetTokenCallback;Ljava/lang/String;)V
    .locals 0
    .param p0, "callback"    # Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider$GetTokenCallback;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-interface {p0, p1}, Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider$GetTokenCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/firebase/database/core/Context$1;->val$executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/google/firebase/database/core/Context$1;->val$callback:Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider$GetTokenCallback;

    invoke-static {v1, p1}, Lcom/google/firebase/database/core/Context$1$$Lambda$4;->lambdaFactory$(Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider$GetTokenCallback;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 282
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/firebase/database/core/Context$1;->val$executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/google/firebase/database/core/Context$1;->val$callback:Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider$GetTokenCallback;

    invoke-static {v1, p1}, Lcom/google/firebase/database/core/Context$1$$Lambda$1;->lambdaFactory$(Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider$GetTokenCallback;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 277
    return-void
.end method
