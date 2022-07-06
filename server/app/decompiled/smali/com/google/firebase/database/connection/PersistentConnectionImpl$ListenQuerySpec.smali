.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenQuerySpec"
.end annotation


# instance fields
.field private final path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final queryParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "queryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->path:Ljava/util/List;

    .line 46
    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->queryParams:Ljava/util/Map;

    .line 47
    return-void
.end method

.method static synthetic access$1000(Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->path:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->queryParams:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 51
    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    .line 61
    :cond_0
    :goto_0
    return v1

    .line 52
    :cond_1
    instance-of v2, p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 56
    check-cast v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

    .line 58
    .local v0, "that":Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;
    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->path:Ljava/util/List;

    iget-object v3, v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->path:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->queryParams:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->queryParams:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->path:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 67
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->queryParams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 68
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->path:Ljava/util/List;

    invoke-static {v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (params: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->queryParams:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
