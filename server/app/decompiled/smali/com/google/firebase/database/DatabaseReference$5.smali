.class Lcom/google/firebase/database/DatabaseReference$5;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/DatabaseReference;->setHijackHash(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/DatabaseReference;

.field final synthetic val$hijackHash:Z


# direct methods
.method constructor <init>(Lcom/google/firebase/database/DatabaseReference;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/DatabaseReference;

    .prologue
    .line 615
    iput-object p1, p0, Lcom/google/firebase/database/DatabaseReference$5;->this$0:Lcom/google/firebase/database/DatabaseReference;

    iput-boolean p2, p0, Lcom/google/firebase/database/DatabaseReference$5;->val$hijackHash:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference$5;->this$0:Lcom/google/firebase/database/DatabaseReference;

    iget-object v0, v0, Lcom/google/firebase/database/DatabaseReference;->repo:Lcom/google/firebase/database/core/Repo;

    iget-boolean v1, p0, Lcom/google/firebase/database/DatabaseReference$5;->val$hijackHash:Z

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/Repo;->setHijackHash(Z)V

    .line 619
    return-void
.end method
