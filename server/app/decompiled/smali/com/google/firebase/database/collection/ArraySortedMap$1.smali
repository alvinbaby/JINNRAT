.class Lcom/google/firebase/database/collection/ArraySortedMap$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database-collection@@16.0.1"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/collection/ArraySortedMap;->iterator(IZ)Ljava/util/Iterator;
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
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field currentPos:I

.field final synthetic this$0:Lcom/google/firebase/database/collection/ArraySortedMap;

.field final synthetic val$pos:I

.field final synthetic val$reverse:Z


# direct methods
.method constructor <init>(Lcom/google/firebase/database/collection/ArraySortedMap;IZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/firebase/database/collection/ArraySortedMap;

    .prologue
    .line 151
    .local p0, "this":Lcom/google/firebase/database/collection/ArraySortedMap$1;, "Lcom/google/firebase/database/collection/ArraySortedMap$1;"
    iput-object p1, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->this$0:Lcom/google/firebase/database/collection/ArraySortedMap;

    iput p2, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->val$pos:I

    iput-boolean p3, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->val$reverse:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iget v0, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->val$pos:I

    iput v0, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->currentPos:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .prologue
    .local p0, "this":Lcom/google/firebase/database/collection/ArraySortedMap$1;, "Lcom/google/firebase/database/collection/ArraySortedMap$1;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 156
    iget-boolean v2, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->val$reverse:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->currentPos:I

    if-ltz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->currentPos:I

    iget-object v3, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->this$0:Lcom/google/firebase/database/collection/ArraySortedMap;

    invoke-static {v3}, Lcom/google/firebase/database/collection/ArraySortedMap;->access$000(Lcom/google/firebase/database/collection/ArraySortedMap;)[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    .local p0, "this":Lcom/google/firebase/database/collection/ArraySortedMap$1;, "Lcom/google/firebase/database/collection/ArraySortedMap$1;"
    invoke-virtual {p0}, Lcom/google/firebase/database/collection/ArraySortedMap$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lcom/google/firebase/database/collection/ArraySortedMap$1;, "Lcom/google/firebase/database/collection/ArraySortedMap$1;"
    iget-object v2, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->this$0:Lcom/google/firebase/database/collection/ArraySortedMap;

    invoke-static {v2}, Lcom/google/firebase/database/collection/ArraySortedMap;->access$000(Lcom/google/firebase/database/collection/ArraySortedMap;)[Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->currentPos:I

    aget-object v0, v2, v3

    .line 162
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->this$0:Lcom/google/firebase/database/collection/ArraySortedMap;

    invoke-static {v2}, Lcom/google/firebase/database/collection/ArraySortedMap;->access$100(Lcom/google/firebase/database/collection/ArraySortedMap;)[Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->currentPos:I

    aget-object v1, v2, v3

    .line 163
    .local v1, "value":Ljava/lang/Object;, "TV;"
    iget-boolean v2, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->val$reverse:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->currentPos:I

    add-int/lit8 v2, v2, -0x1

    :goto_0
    iput v2, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->currentPos:I

    .line 164
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v2, v0, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 163
    :cond_0
    iget v2, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->currentPos:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 169
    .local p0, "this":Lcom/google/firebase/database/collection/ArraySortedMap$1;, "Lcom/google/firebase/database/collection/ArraySortedMap$1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t remove elements from ImmutableSortedMap"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
