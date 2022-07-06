.class Lsigma/male/RequestNetworkController$3$2;
.super Ljava/lang/Object;
.source "RequestNetworkController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsigma/male/RequestNetworkController$3;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsigma/male/RequestNetworkController$3;

.field private final synthetic val$requestListener:Lsigma/male/RequestNetwork$RequestListener;

.field private final synthetic val$response:Lokhttp3/Response;

.field private final synthetic val$responseBody:Ljava/lang/String;

.field private final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsigma/male/RequestNetworkController$3;Lokhttp3/Response;Lsigma/male/RequestNetwork$RequestListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsigma/male/RequestNetworkController$3$2;->this$1:Lsigma/male/RequestNetworkController$3;

    iput-object p2, p0, Lsigma/male/RequestNetworkController$3$2;->val$response:Lokhttp3/Response;

    iput-object p3, p0, Lsigma/male/RequestNetworkController$3$2;->val$requestListener:Lsigma/male/RequestNetwork$RequestListener;

    iput-object p4, p0, Lsigma/male/RequestNetworkController$3$2;->val$tag:Ljava/lang/String;

    iput-object p5, p0, Lsigma/male/RequestNetworkController$3$2;->val$responseBody:Ljava/lang/String;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 174
    iget-object v0, p0, Lsigma/male/RequestNetworkController$3$2;->val$response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    .line 175
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 176
    invoke-virtual {v2}, Lokhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lsigma/male/RequestNetworkController$3$2;->val$requestListener:Lsigma/male/RequestNetwork$RequestListener;

    iget-object v1, p0, Lsigma/male/RequestNetworkController$3$2;->val$tag:Ljava/lang/String;

    iget-object v2, p0, Lsigma/male/RequestNetworkController$3$2;->val$responseBody:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lsigma/male/RequestNetwork$RequestListener;->onResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 180
    return-void

    .line 176
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 177
    invoke-virtual {v2, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v1, "OyEqQQ=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
