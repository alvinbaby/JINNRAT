.class Lcom/google/firebase/database/core/persistence/TrackedQueryManager$6;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->pruneOldQueries(Lcom/google/firebase/database/core/persistence/CachePolicy;)Lcom/google/firebase/database/core/persistence/PruneForest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/persistence/TrackedQueryManager;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/persistence/TrackedQueryManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/core/persistence/TrackedQueryManager;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$6;->this$0:Lcom/google/firebase/database/core/persistence/TrackedQueryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/firebase/database/core/persistence/TrackedQuery;Lcom/google/firebase/database/core/persistence/TrackedQuery;)I
    .locals 4
    .param p1, "q1"    # Lcom/google/firebase/database/core/persistence/TrackedQuery;
    .param p2, "q2"    # Lcom/google/firebase/database/core/persistence/TrackedQuery;

    .prologue
    .line 229
    iget-wide v0, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    iget-wide v2, p2, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/firebase/database/core/utilities/Utilities;->compareLongs(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 226
    check-cast p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    check-cast p2, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$6;->compare(Lcom/google/firebase/database/core/persistence/TrackedQuery;Lcom/google/firebase/database/core/persistence/TrackedQuery;)I

    move-result v0

    return v0
.end method
