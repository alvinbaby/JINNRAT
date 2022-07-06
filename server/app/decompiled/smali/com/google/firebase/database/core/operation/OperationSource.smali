.class public Lcom/google/firebase/database/core/operation/OperationSource;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/core/operation/OperationSource$Source;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final SERVER:Lcom/google/firebase/database/core/operation/OperationSource;

.field public static final USER:Lcom/google/firebase/database/core/operation/OperationSource;


# instance fields
.field private final queryParams:Lcom/google/firebase/database/core/view/QueryParams;

.field private final source:Lcom/google/firebase/database/core/operation/OperationSource$Source;

.field private final tagged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 19
    const-class v0, Lcom/google/firebase/database/core/operation/OperationSource;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/firebase/database/core/operation/OperationSource;->$assertionsDisabled:Z

    .line 26
    new-instance v0, Lcom/google/firebase/database/core/operation/OperationSource;

    sget-object v2, Lcom/google/firebase/database/core/operation/OperationSource$Source;->User:Lcom/google/firebase/database/core/operation/OperationSource$Source;

    invoke-direct {v0, v2, v3, v1}, Lcom/google/firebase/database/core/operation/OperationSource;-><init>(Lcom/google/firebase/database/core/operation/OperationSource$Source;Lcom/google/firebase/database/core/view/QueryParams;Z)V

    sput-object v0, Lcom/google/firebase/database/core/operation/OperationSource;->USER:Lcom/google/firebase/database/core/operation/OperationSource;

    .line 27
    new-instance v0, Lcom/google/firebase/database/core/operation/OperationSource;

    sget-object v2, Lcom/google/firebase/database/core/operation/OperationSource$Source;->Server:Lcom/google/firebase/database/core/operation/OperationSource$Source;

    invoke-direct {v0, v2, v3, v1}, Lcom/google/firebase/database/core/operation/OperationSource;-><init>(Lcom/google/firebase/database/core/operation/OperationSource$Source;Lcom/google/firebase/database/core/view/QueryParams;Z)V

    sput-object v0, Lcom/google/firebase/database/core/operation/OperationSource;->SERVER:Lcom/google/firebase/database/core/operation/OperationSource;

    return-void

    :cond_0
    move v0, v1

    .line 19
    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/firebase/database/core/operation/OperationSource$Source;Lcom/google/firebase/database/core/view/QueryParams;Z)V
    .locals 1
    .param p1, "source"    # Lcom/google/firebase/database/core/operation/OperationSource$Source;
    .param p2, "queryParams"    # Lcom/google/firebase/database/core/view/QueryParams;
    .param p3, "tagged"    # Z

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/firebase/database/core/operation/OperationSource;->source:Lcom/google/firebase/database/core/operation/OperationSource$Source;

    .line 39
    iput-object p2, p0, Lcom/google/firebase/database/core/operation/OperationSource;->queryParams:Lcom/google/firebase/database/core/view/QueryParams;

    .line 40
    iput-boolean p3, p0, Lcom/google/firebase/database/core/operation/OperationSource;->tagged:Z

    .line 41
    sget-boolean v0, Lcom/google/firebase/database/core/operation/OperationSource;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/database/core/operation/OperationSource;->isFromServer()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_0
    return-void
.end method

.method public static forServerTaggedQuery(Lcom/google/firebase/database/core/view/QueryParams;)Lcom/google/firebase/database/core/operation/OperationSource;
    .locals 3
    .param p0, "queryParams"    # Lcom/google/firebase/database/core/view/QueryParams;

    .prologue
    .line 30
    new-instance v0, Lcom/google/firebase/database/core/operation/OperationSource;

    sget-object v1, Lcom/google/firebase/database/core/operation/OperationSource$Source;->Server:Lcom/google/firebase/database/core/operation/OperationSource$Source;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/google/firebase/database/core/operation/OperationSource;-><init>(Lcom/google/firebase/database/core/operation/OperationSource$Source;Lcom/google/firebase/database/core/view/QueryParams;Z)V

    return-object v0
.end method


# virtual methods
.method public getQueryParams()Lcom/google/firebase/database/core/view/QueryParams;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/firebase/database/core/operation/OperationSource;->queryParams:Lcom/google/firebase/database/core/view/QueryParams;

    return-object v0
.end method

.method public isFromServer()Z
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/firebase/database/core/operation/OperationSource;->source:Lcom/google/firebase/database/core/operation/OperationSource$Source;

    sget-object v1, Lcom/google/firebase/database/core/operation/OperationSource$Source;->Server:Lcom/google/firebase/database/core/operation/OperationSource$Source;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFromUser()Z
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/firebase/database/core/operation/OperationSource;->source:Lcom/google/firebase/database/core/operation/OperationSource$Source;

    sget-object v1, Lcom/google/firebase/database/core/operation/OperationSource$Source;->User:Lcom/google/firebase/database/core/operation/OperationSource$Source;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTagged()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/firebase/database/core/operation/OperationSource;->tagged:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OperationSource{source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/operation/OperationSource;->source:Lcom/google/firebase/database/core/operation/OperationSource$Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", queryParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/operation/OperationSource;->queryParams:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tagged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/firebase/database/core/operation/OperationSource;->tagged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
