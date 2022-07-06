.class final synthetic Lcom/google/firebase/database/core/Context$$Lambda$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider;


# instance fields
.field private final arg$1:Lcom/google/firebase/database/core/AuthTokenProvider;

.field private final arg$2:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method private constructor <init>(Lcom/google/firebase/database/core/AuthTokenProvider;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/core/Context$$Lambda$1;->arg$1:Lcom/google/firebase/database/core/AuthTokenProvider;

    iput-object p2, p0, Lcom/google/firebase/database/core/Context$$Lambda$1;->arg$2:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/database/core/AuthTokenProvider;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider;
    .locals 1

    new-instance v0, Lcom/google/firebase/database/core/Context$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/database/core/Context$$Lambda$1;-><init>(Lcom/google/firebase/database/core/AuthTokenProvider;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method


# virtual methods
.method public getToken(ZLcom/google/firebase/database/connection/ConnectionAuthTokenProvider$GetTokenCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/core/Context$$Lambda$1;->arg$1:Lcom/google/firebase/database/core/AuthTokenProvider;

    iget-object v1, p0, Lcom/google/firebase/database/core/Context$$Lambda$1;->arg$2:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, p1, p2}, Lcom/google/firebase/database/core/Context;->lambda$wrapAuthTokenProvider$0(Lcom/google/firebase/database/core/AuthTokenProvider;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/google/firebase/database/connection/ConnectionAuthTokenProvider$GetTokenCallback;)V

    return-void
.end method
