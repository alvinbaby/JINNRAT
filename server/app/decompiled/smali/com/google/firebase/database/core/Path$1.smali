.class Lcom/google/firebase/database/core/Path$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Path;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/firebase/database/snapshot/ChildKey;",
        ">;"
    }
.end annotation


# instance fields
.field offset:I

.field final synthetic this$0:Lcom/google/firebase/database/core/Path;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Path;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/firebase/database/core/Path;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/firebase/database/core/Path$1;->this$0:Lcom/google/firebase/database/core/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iget-object v0, p0, Lcom/google/firebase/database/core/Path$1;->this$0:Lcom/google/firebase/database/core/Path;

    invoke-static {v0}, Lcom/google/firebase/database/core/Path;->access$000(Lcom/google/firebase/database/core/Path;)I

    move-result v0

    iput v0, p0, Lcom/google/firebase/database/core/Path$1;->offset:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 193
    iget v0, p0, Lcom/google/firebase/database/core/Path$1;->offset:I

    iget-object v1, p0, Lcom/google/firebase/database/core/Path$1;->this$0:Lcom/google/firebase/database/core/Path;

    invoke-static {v1}, Lcom/google/firebase/database/core/Path;->access$100(Lcom/google/firebase/database/core/Path;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/google/firebase/database/snapshot/ChildKey;
    .locals 3

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path$1;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "No more elements."

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/database/core/Path$1;->this$0:Lcom/google/firebase/database/core/Path;

    invoke-static {v1}, Lcom/google/firebase/database/core/Path;->access$200(Lcom/google/firebase/database/core/Path;)[Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    iget v2, p0, Lcom/google/firebase/database/core/Path$1;->offset:I

    aget-object v0, v1, v2

    .line 202
    .local v0, "child":Lcom/google/firebase/database/snapshot/ChildKey;
    iget v1, p0, Lcom/google/firebase/database/core/Path$1;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/firebase/database/core/Path$1;->offset:I

    .line 203
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path$1;->next()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 208
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t remove component from immutable Path!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
