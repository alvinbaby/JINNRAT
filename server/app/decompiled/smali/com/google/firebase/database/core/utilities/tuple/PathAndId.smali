.class public Lcom/google/firebase/database/core/utilities/tuple/PathAndId;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"


# instance fields
.field private id:J

.field private path:Lcom/google/firebase/database/core/Path;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/Path;J)V
    .locals 0
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "id"    # J

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/firebase/database/core/utilities/tuple/PathAndId;->path:Lcom/google/firebase/database/core/Path;

    .line 26
    iput-wide p2, p0, Lcom/google/firebase/database/core/utilities/tuple/PathAndId;->id:J

    .line 27
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/google/firebase/database/core/utilities/tuple/PathAndId;->id:J

    return-wide v0
.end method

.method public getPath()Lcom/google/firebase/database/core/Path;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/tuple/PathAndId;->path:Lcom/google/firebase/database/core/Path;

    return-object v0
.end method
