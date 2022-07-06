.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$2;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendOnDisconnect(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

.field final synthetic val$onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    .prologue
    .line 684
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$2;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$2;->val$onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 687
    .local p1, "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "s"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 688
    .local v2, "status":Ljava/lang/String;
    const/4 v1, 0x0

    .line 689
    .local v1, "errorMessage":Ljava/lang/String;
    const/4 v0, 0x0

    .line 690
    .local v0, "errorCode":Ljava/lang/String;
    const-string v3, "ok"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 691
    move-object v0, v2

    .line 692
    const-string v3, "d"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "errorMessage":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 694
    .restart local v1    # "errorMessage":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$2;->val$onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;

    if-eqz v3, :cond_1

    .line 695
    iget-object v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$2;->val$onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;

    invoke-interface {v3, v0, v1}, Lcom/google/firebase/database/connection/RequestResultCallback;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    :cond_1
    return-void
.end method
