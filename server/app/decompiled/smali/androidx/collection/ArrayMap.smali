.class public Landroidx/collection/ArrayMap;
.super Landroidx/collection/SimpleArrayMap;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/collection/ArrayMap$MapIterator;,
        Landroidx/collection/ArrayMap$ValueIterator;,
        Landroidx/collection/ArrayMap$KeyIterator;,
        Landroidx/collection/ArrayMap$ValueCollection;,
        Landroidx/collection/ArrayMap$KeySet;,
        Landroidx/collection/ArrayMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/collection/SimpleArrayMap",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field mEntrySet:Landroidx/collection/ArrayMap$EntrySet;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field mKeySet:Landroidx/collection/ArrayMap$KeySet;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap",
            "<TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field mValues:Landroidx/collection/ArrayMap$ValueCollection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap",
            "<TK;TV;>.ValueCollection;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroidx/collection/SimpleArrayMap;)V
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/collection/SimpleArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    .line 78
    return-void
.end method

.method static equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 637
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 638
    const/4 v4, 0x1

    move v0, v4

    .line 649
    :goto_0
    return v0

    .line 640
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Ljava/util/Set;

    if-eqz v4, :cond_2

    .line 641
    move-object v4, v1

    check-cast v4, Ljava/util/Set;

    move-object v2, v4

    .line 644
    move-object v4, v0

    :try_start_0
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-ne v4, v5, :cond_1

    move-object v4, v0

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 645
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 649
    :cond_2
    :goto_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 646
    :catch_1
    move-exception v4

    move-object v3, v4

    goto :goto_2
.end method


# virtual methods
.method public containsAll(Ljava/util/Collection;)Z
    .locals 6
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 88
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 89
    const/4 v4, 0x0

    move v0, v4

    .line 92
    :goto_1
    return v0

    .line 91
    :cond_0
    goto :goto_0

    .line 92
    :cond_1
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/ArrayMap;->mEntrySet:Landroidx/collection/ArrayMap$EntrySet;

    move-object v1, v2

    .line 153
    move-object v2, v1

    if-nez v2, :cond_0

    .line 154
    move-object v2, v0

    new-instance v3, Landroidx/collection/ArrayMap$EntrySet;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/collection/ArrayMap$EntrySet;-><init>(Landroidx/collection/ArrayMap;)V

    move-object v6, v2

    move-object v7, v3

    move-object v2, v7

    move-object v3, v6

    move-object v4, v7

    iput-object v4, v3, Landroidx/collection/ArrayMap;->mEntrySet:Landroidx/collection/ArrayMap$EntrySet;

    move-object v1, v2

    .line 156
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/ArrayMap;->mKeySet:Landroidx/collection/ArrayMap$KeySet;

    move-object v1, v2

    .line 170
    move-object v2, v1

    if-nez v2, :cond_0

    .line 171
    move-object v2, v0

    new-instance v3, Landroidx/collection/ArrayMap$KeySet;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/collection/ArrayMap$KeySet;-><init>(Landroidx/collection/ArrayMap;)V

    move-object v6, v2

    move-object v7, v3

    move-object v2, v7

    move-object v3, v6

    move-object v4, v7

    iput-object v4, v3, Landroidx/collection/ArrayMap;->mKeySet:Landroidx/collection/ArrayMap$KeySet;

    move-object v1, v2

    .line 173
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 7
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Landroidx/collection/ArrayMap;->mSize:I

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroidx/collection/ArrayMap;->ensureCapacity(I)V

    .line 102
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v3, v4

    .line 103
    move-object v4, v0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 104
    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 7
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget v5, v5, Landroidx/collection/ArrayMap;->mSize:I

    move v2, v5

    .line 114
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 115
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 116
    goto :goto_0

    .line 117
    :cond_0
    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/collection/ArrayMap;->mSize:I

    if-eq v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    return v0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 7
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget v4, v4, Landroidx/collection/ArrayMap;->mSize:I

    move v2, v4

    .line 128
    move-object v4, v0

    iget v4, v4, Landroidx/collection/ArrayMap;->mSize:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v4

    :goto_0
    move v4, v3

    if-ltz v4, :cond_1

    .line 129
    move-object v4, v1

    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 130
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 128
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 133
    :cond_1
    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/collection/ArrayMap;->mSize:I

    if-eq v4, v5, :cond_2

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    return v0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 621
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    iget v5, v5, Landroidx/collection/ArrayMap;->mSize:I

    move v3, v5

    .line 622
    move-object v5, v1

    array-length v5, v5

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 623
    move-object v5, v1

    .line 624
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    move v6, v3

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v4, v5

    .line 625
    move-object v5, v4

    move-object v1, v5

    .line 627
    :cond_0
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 628
    move-object v5, v1

    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/ArrayMap;->mArray:[Ljava/lang/Object;

    move v8, v4

    const/4 v9, 0x1

    shl-int/lit8 v8, v8, 0x1

    move v9, v2

    add-int/2addr v8, v9

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    .line 627
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 630
    :cond_1
    move-object v5, v1

    array-length v5, v5

    move v6, v3

    if-le v5, v6, :cond_2

    .line 631
    move-object v5, v1

    move v6, v3

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 633
    :cond_2
    move-object v5, v1

    move-object v0, v5

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/ArrayMap;->mValues:Landroidx/collection/ArrayMap$ValueCollection;

    move-object v1, v2

    .line 187
    move-object v2, v1

    if-nez v2, :cond_0

    .line 188
    move-object v2, v0

    new-instance v3, Landroidx/collection/ArrayMap$ValueCollection;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/collection/ArrayMap$ValueCollection;-><init>(Landroidx/collection/ArrayMap;)V

    move-object v6, v2

    move-object v7, v3

    move-object v2, v7

    move-object v3, v6

    move-object v4, v7

    iput-object v4, v3, Landroidx/collection/ArrayMap;->mValues:Landroidx/collection/ArrayMap$ValueCollection;

    move-object v1, v2

    .line 190
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method
