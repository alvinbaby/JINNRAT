.class public Lcom/google/firebase/database/core/Path;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/firebase/database/snapshot/ChildKey;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/firebase/database/core/Path;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_PATH:Lcom/google/firebase/database/core/Path;


# instance fields
.field private final end:I

.field private final pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

.field private final start:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-class v0, Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/firebase/database/core/Path;->$assertionsDisabled:Z

    .line 43
    new-instance v0, Lcom/google/firebase/database/core/Path;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/database/core/Path;->EMPTY_PATH:Lcom/google/firebase/database/core/Path;

    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 10
    .param p1, "pathString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v5, "/"

    const/4 v7, -0x1

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, "segments":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 71
    .local v0, "count":I
    array-length v7, v4

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v3, v4, v5

    .line 72
    .local v3, "segment":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 71
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 76
    .end local v3    # "segment":Ljava/lang/String;
    :cond_1
    new-array v5, v0, [Lcom/google/firebase/database/snapshot/ChildKey;

    iput-object v5, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, "j":I
    array-length v7, v4

    move v5, v6

    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v3, v4, v5

    .line 79
    .restart local v3    # "segment":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 80
    iget-object v8, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    invoke-static {v3}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v9

    aput-object v9, v8, v2

    .line 78
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v2, v1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    goto :goto_1

    .line 83
    .end local v3    # "segment":Ljava/lang/String;
    :cond_2
    iput v6, p0, Lcom/google/firebase/database/core/Path;->start:I

    .line 84
    iget-object v5, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    array-length v5, v5

    iput v5, p0, Lcom/google/firebase/database/core/Path;->end:I

    .line 85
    return-void

    .restart local v3    # "segment":Ljava/lang/String;
    :cond_3
    move v1, v2

    .end local v2    # "j":I
    .restart local v1    # "j":I
    goto :goto_2
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/firebase/database/snapshot/ChildKey;

    iput-object v3, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 62
    .local v2, "segment":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-static {v2}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v5

    aput-object v5, v4, v0

    move v0, v1

    .line 63
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 64
    .end local v2    # "segment":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/firebase/database/core/Path;->start:I

    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/google/firebase/database/core/Path;->end:I

    .line 66
    return-void
.end method

.method public varargs constructor <init>([Lcom/google/firebase/database/snapshot/ChildKey;)V
    .locals 4
    .param p1, "segments"    # [Lcom/google/firebase/database/snapshot/ChildKey;

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/firebase/database/snapshot/ChildKey;

    iput-object v1, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    .line 51
    iput v2, p0, Lcom/google/firebase/database/core/Path;->start:I

    .line 52
    array-length v1, p1

    iput v1, p0, Lcom/google/firebase/database/core/Path;->end:I

    .line 53
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p1, v1

    .line 54
    .local v0, "name":Lcom/google/firebase/database/snapshot/ChildKey;
    sget-boolean v2, Lcom/google/firebase/database/core/Path;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Can\'t construct a path with a null value!"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 53
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "name":Lcom/google/firebase/database/snapshot/ChildKey;
    :cond_1
    return-void
.end method

.method private constructor <init>([Lcom/google/firebase/database/snapshot/ChildKey;II)V
    .locals 0
    .param p1, "pieces"    # [Lcom/google/firebase/database/snapshot/ChildKey;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    .line 89
    iput p2, p0, Lcom/google/firebase/database/core/Path;->start:I

    .line 90
    iput p3, p0, Lcom/google/firebase/database/core/Path;->end:I

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/database/core/Path;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/Path;

    .prologue
    .line 25
    iget v0, p0, Lcom/google/firebase/database/core/Path;->start:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/firebase/database/core/Path;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/Path;

    .prologue
    .line 25
    iget v0, p0, Lcom/google/firebase/database/core/Path;->end:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/firebase/database/core/Path;)[Lcom/google/firebase/database/snapshot/ChildKey;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/Path;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    return-object v0
.end method

.method public static getEmptyPath()Lcom/google/firebase/database/core/Path;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/firebase/database/core/Path;->EMPTY_PATH:Lcom/google/firebase/database/core/Path;

    return-object v0
.end method

.method public static getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;
    .locals 5
    .param p0, "from"    # Lcom/google/firebase/database/core/Path;
    .param p1, "to"    # Lcom/google/firebase/database/core/Path;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    .line 29
    .local v1, "outerFront":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 30
    .local v0, "innerFront":Lcom/google/firebase/database/snapshot/ChildKey;
    if-nez v1, :cond_0

    .line 33
    .end local p1    # "to":Lcom/google/firebase/database/core/Path;
    :goto_0
    return-object p1

    .line 32
    .restart local p1    # "to":Lcom/google/firebase/database/core/Path;
    :cond_0
    invoke-virtual {v1, v0}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object p1

    goto :goto_0

    .line 35
    :cond_1
    new-instance v2, Lcom/google/firebase/database/DatabaseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INTERNAL ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not contained in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 141
    .local v0, "key":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    .end local v0    # "key":Lcom/google/firebase/database/snapshot/ChildKey;
    :cond_0
    return-object v1
.end method

.method public child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;
    .locals 7
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .prologue
    const/4 v6, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v3

    add-int v1, v2, v3

    .line 95
    .local v1, "newSize":I
    new-array v0, v1, [Lcom/google/firebase/database/snapshot/ChildKey;

    .line 96
    .local v0, "newPieces":[Lcom/google/firebase/database/snapshot/ChildKey;
    iget-object v2, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    iget v3, p0, Lcom/google/firebase/database/core/Path;->start:I

    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v4

    invoke-static {v2, v3, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    iget-object v2, p1, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    iget v3, p1, Lcom/google/firebase/database/core/Path;->start:I

    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v5

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    new-instance v2, Lcom/google/firebase/database/core/Path;

    invoke-direct {v2, v0, v6, v1}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;II)V

    return-object v2
.end method

.method public child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;
    .locals 5
    .param p1, "child"    # Lcom/google/firebase/database/snapshot/ChildKey;

    .prologue
    const/4 v4, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v1

    .line 103
    .local v1, "size":I
    add-int/lit8 v2, v1, 0x1

    new-array v0, v2, [Lcom/google/firebase/database/snapshot/ChildKey;

    .line 104
    .local v0, "newPieces":[Lcom/google/firebase/database/snapshot/ChildKey;
    iget-object v2, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    iget v3, p0, Lcom/google/firebase/database/core/Path;->start:I

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    aput-object p1, v0, v1

    .line 106
    new-instance v2, Lcom/google/firebase/database/core/Path;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v0, v4, v3}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;II)V

    return-object v2
.end method

.method public compareTo(Lcom/google/firebase/database/core/Path;)I
    .locals 5
    .param p1, "other"    # Lcom/google/firebase/database/core/Path;

    .prologue
    .line 263
    iget v1, p0, Lcom/google/firebase/database/core/Path;->start:I

    .local v1, "i":I
    iget v2, p1, Lcom/google/firebase/database/core/Path;->start:I

    .local v2, "j":I
    :goto_0
    iget v3, p0, Lcom/google/firebase/database/core/Path;->end:I

    if-ge v1, v3, :cond_1

    iget v3, p1, Lcom/google/firebase/database/core/Path;->end:I

    if-ge v2, v3, :cond_1

    .line 264
    iget-object v3, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    aget-object v3, v3, v1

    iget-object v4, p1, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/snapshot/ChildKey;->compareTo(Lcom/google/firebase/database/snapshot/ChildKey;)I

    move-result v0

    .line 265
    .local v0, "comp":I
    if-eqz v0, :cond_0

    .line 274
    .end local v0    # "comp":I
    :goto_1
    return v0

    .line 263
    .restart local v0    # "comp":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    .end local v0    # "comp":I
    :cond_1
    iget v3, p0, Lcom/google/firebase/database/core/Path;->end:I

    if-ne v1, v3, :cond_2

    iget v3, p1, Lcom/google/firebase/database/core/Path;->end:I

    if-ne v2, v3, :cond_2

    .line 270
    const/4 v0, 0x0

    goto :goto_1

    .line 271
    :cond_2
    iget v3, p0, Lcom/google/firebase/database/core/Path;->end:I

    if-ne v1, v3, :cond_3

    .line 272
    const/4 v0, -0x1

    goto :goto_1

    .line 274
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 25
    check-cast p1, Lcom/google/firebase/database/core/Path;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/core/Path;->compareTo(Lcom/google/firebase/database/core/Path;)I

    move-result v0

    return v0
.end method

.method public contains(Lcom/google/firebase/database/core/Path;)Z
    .locals 5
    .param p1, "other"    # Lcom/google/firebase/database/core/Path;

    .prologue
    const/4 v2, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v2

    .line 218
    :cond_1
    iget v0, p0, Lcom/google/firebase/database/core/Path;->start:I

    .line 219
    .local v0, "i":I
    iget v1, p1, Lcom/google/firebase/database/core/Path;->start:I

    .line 220
    .local v1, "j":I
    :goto_1
    iget v3, p0, Lcom/google/firebase/database/core/Path;->end:I

    if-ge v0, v3, :cond_2

    .line 221
    iget-object v3, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    aget-object v3, v3, v0

    iget-object v4, p1, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    add-int/lit8 v0, v0, 0x1

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 228
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 233
    instance-of v5, p1, Lcom/google/firebase/database/core/Path;

    if-nez v5, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v3

    .line 236
    :cond_1
    if-ne p0, p1, :cond_2

    move v3, v4

    .line 237
    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 239
    check-cast v2, Lcom/google/firebase/database/core/Path;

    .line 240
    .local v2, "otherPath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v5

    invoke-virtual {v2}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 243
    iget v0, p0, Lcom/google/firebase/database/core/Path;->start:I

    .local v0, "i":I
    iget v1, v2, Lcom/google/firebase/database/core/Path;->start:I

    .local v1, "j":I
    :goto_1
    iget v5, p0, Lcom/google/firebase/database/core/Path;->end:I

    if-ge v0, v5, :cond_3

    iget v5, v2, Lcom/google/firebase/database/core/Path;->end:I

    if-ge v1, v5, :cond_3

    .line 244
    iget-object v5, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    aget-object v5, v5, v0

    iget-object v6, v2, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 243
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    .line 248
    goto :goto_0
.end method

.method public getBack()Lcom/google/firebase/database/snapshot/ChildKey;
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    iget v1, p0, Lcom/google/firebase/database/core/Path;->end:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 174
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFront()Lcom/google/firebase/database/snapshot/ChildKey;
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 150
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    iget v1, p0, Lcom/google/firebase/database/core/Path;->start:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getParent()Lcom/google/firebase/database/core/Path;
    .locals 4

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/firebase/database/core/Path;

    iget-object v1, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    iget v2, p0, Lcom/google/firebase/database/core/Path;->start:I

    iget v3, p0, Lcom/google/firebase/database/core/Path;->end:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;II)V

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "hashCode":I
    iget v1, p0, Lcom/google/firebase/database/core/Path;->start:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/firebase/database/core/Path;->end:I

    if-ge v1, v2, :cond_0

    .line 255
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/ChildKey;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 179
    iget v0, p0, Lcom/google/firebase/database/core/Path;->start:I

    iget v1, p0, Lcom/google/firebase/database/core/Path;->end:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Lcom/google/firebase/database/core/Path$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/core/Path$1;-><init>(Lcom/google/firebase/database/core/Path;)V

    return-object v0
.end method

.method public popFront()Lcom/google/firebase/database/core/Path;
    .locals 4

    .prologue
    .line 155
    iget v0, p0, Lcom/google/firebase/database/core/Path;->start:I

    .line 156
    .local v0, "newStart":I
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    add-int/lit8 v0, v0, 0x1

    .line 159
    :cond_0
    new-instance v1, Lcom/google/firebase/database/core/Path;

    iget-object v2, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    iget v3, p0, Lcom/google/firebase/database/core/Path;->end:I

    invoke-direct {v1, v2, v0, v3}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;II)V

    return-object v1
.end method

.method public size()I
    .locals 2

    .prologue
    .line 183
    iget v0, p0, Lcom/google/firebase/database/core/Path;->end:I

    iget v1, p0, Lcom/google/firebase/database/core/Path;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    const-string v2, "/"

    .line 119
    :goto_0
    return-object v2

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/google/firebase/database/core/Path;->start:I

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/google/firebase/database/core/Path;->end:I

    if-ge v1, v2, :cond_1

    .line 116
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v2, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 119
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    const-string v2, "/"

    .line 134
    :goto_0
    return-object v2

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/google/firebase/database/core/Path;->start:I

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/google/firebase/database/core/Path;->end:I

    if-ge v1, v2, :cond_2

    .line 129
    iget v2, p0, Lcom/google/firebase/database/core/Path;->start:I

    if-le v1, v2, :cond_1

    .line 130
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 134
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
