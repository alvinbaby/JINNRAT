.class Lcom/google/firebase/database/collection/ImmutableSortedSet$WrappedEntryIterator;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database-collection@@16.0.1"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/collection/ImmutableSortedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedEntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TT;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TT;",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/google/firebase/database/collection/ImmutableSortedSet$WrappedEntryIterator;, "Lcom/google/firebase/database/collection/ImmutableSortedSet$WrappedEntryIterator<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TT;Ljava/lang/Void;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/firebase/database/collection/ImmutableSortedSet$WrappedEntryIterator;->iterator:Ljava/util/Iterator;

    .line 28
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lcom/google/firebase/database/collection/ImmutableSortedSet$WrappedEntryIterator;, "Lcom/google/firebase/database/collection/ImmutableSortedSet$WrappedEntryIterator<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/collection/ImmutableSortedSet$WrappedEntryIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/google/firebase/database/collection/ImmutableSortedSet$WrappedEntryIterator;, "Lcom/google/firebase/database/collection/ImmutableSortedSet$WrappedEntryIterator<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/collection/ImmutableSortedSet$WrappedEntryIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lcom/google/firebase/database/collection/ImmutableSortedSet$WrappedEntryIterator;, "Lcom/google/firebase/database/collection/ImmutableSortedSet$WrappedEntryIterator<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/collection/ImmutableSortedSet$WrappedEntryIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 43
    return-void
.end method
