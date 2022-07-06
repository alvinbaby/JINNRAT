.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutstandingListen"
.end annotation


# instance fields
.field private final hashFunction:Lcom/google/firebase/database/connection/ListenHashProvider;

.field private final query:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

.field private final resultCallback:Lcom/google/firebase/database/connection/RequestResultCallback;

.field private final tag:Ljava/lang/Long;


# direct methods
.method private constructor <init>(Lcom/google/firebase/database/connection/RequestResultCallback;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;Ljava/lang/Long;Lcom/google/firebase/database/connection/ListenHashProvider;)V
    .locals 0
    .param p1, "callback"    # Lcom/google/firebase/database/connection/RequestResultCallback;
    .param p2, "query"    # Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;
    .param p3, "tag"    # Ljava/lang/Long;
    .param p4, "hashFunction"    # Lcom/google/firebase/database/connection/ListenHashProvider;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->resultCallback:Lcom/google/firebase/database/connection/RequestResultCallback;

    .line 89
    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->query:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

    .line 90
    iput-object p4, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->hashFunction:Lcom/google/firebase/database/connection/ListenHashProvider;

    .line 91
    iput-object p3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->tag:Ljava/lang/Long;

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/database/connection/RequestResultCallback;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;Ljava/lang/Long;Lcom/google/firebase/database/connection/ListenHashProvider;Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/database/connection/RequestResultCallback;
    .param p2, "x1"    # Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;
    .param p3, "x2"    # Ljava/lang/Long;
    .param p4, "x3"    # Lcom/google/firebase/database/connection/ListenHashProvider;
    .param p5, "x4"    # Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;-><init>(Lcom/google/firebase/database/connection/RequestResultCallback;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;Ljava/lang/Long;Lcom/google/firebase/database/connection/ListenHashProvider;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)Lcom/google/firebase/database/connection/RequestResultCallback;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->resultCallback:Lcom/google/firebase/database/connection/RequestResultCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->query:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

    return-object v0
.end method


# virtual methods
.method public getHashFunction()Lcom/google/firebase/database/connection/ListenHashProvider;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->hashFunction:Lcom/google/firebase/database/connection/ListenHashProvider;

    return-object v0
.end method

.method public getQuery()Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->query:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

    return-object v0
.end method

.method public getTag()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->tag:Ljava/lang/Long;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->query:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

    invoke-virtual {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (Tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->tag:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
