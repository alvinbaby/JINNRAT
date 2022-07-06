.class Lcom/google/firebase/database/Query$4;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/Query;->keepSynced(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/Query;

.field final synthetic val$keepSynced:Z


# direct methods
.method constructor <init>(Lcom/google/firebase/database/Query;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/Query;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/google/firebase/database/Query$4;->this$0:Lcom/google/firebase/database/Query;

    iput-boolean p2, p0, Lcom/google/firebase/database/Query$4;->val$keepSynced:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/firebase/database/Query$4;->this$0:Lcom/google/firebase/database/Query;

    iget-object v0, v0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v1, p0, Lcom/google/firebase/database/Query$4;->this$0:Lcom/google/firebase/database/Query;

    invoke-virtual {v1}, Lcom/google/firebase/database/Query;->getSpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/firebase/database/Query$4;->val$keepSynced:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/core/Repo;->keepSynced(Lcom/google/firebase/database/core/view/QuerySpec;Z)V

    .line 256
    return-void
.end method
