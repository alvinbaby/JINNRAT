.class public abstract Lcom/google/android/gms/internal/common/zzq;
.super Ljava/util/AbstractCollection;
.source "com.google.android.gms:play-services-basement@@17.6.0"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final zza:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/google/android/gms/internal/common/zzq;->zza:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-direct {v1}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v0, v2

    move-object v2, v0

    .line 1
    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    move-object v2, v0

    throw v2
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v0, v2

    move-object v2, v0

    .line 1
    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    move-object v2, v0

    throw v2
.end method

.method public final clear()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    move-object v0, p0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v0, v1

    move-object v1, v0

    .line 1
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    move-object v1, v0

    throw v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/common/zzq;->zza()Lcom/google/android/gms/internal/common/zzx;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v0, v2

    move-object v2, v0

    .line 1
    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    move-object v2, v0

    throw v2
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v0, v2

    move-object v2, v0

    .line 1
    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    move-object v2, v0

    throw v2
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v0, v2

    move-object v2, v0

    .line 1
    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    move-object v2, v0

    throw v2
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lcom/google/android/gms/internal/common/zzq;->zza:[Ljava/lang/Object;

    .line 1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/common/zzq;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-eqz v4, :cond_3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/common/zzq;->size()I

    move-result v4

    move v2, v4

    move-object v4, v1

    array-length v4, v4

    move v3, v4

    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/common/zzq;->zzb()[Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    if-nez v4, :cond_1

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 2
    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    move v5, v2

    .line 3
    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v1, v4

    :cond_0
    :goto_0
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    .line 6
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/common/zzq;->zzg([Ljava/lang/Object;I)I

    move-result v4

    move-object v4, v1

    move-object v0, v4

    :goto_1
    return-object v0

    :cond_1
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/common/zzq;->zzc()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/gms/internal/common/zzq;->zzd()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 4
    invoke-static {v4, v5, v6, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    :cond_2
    move v4, v3

    move v5, v2

    if-le v4, v5, :cond_0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    .line 5
    aput-object v6, v4, v5

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 7
    throw v4
.end method

.method public abstract zza()Lcom/google/android/gms/internal/common/zzx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/common/zzx",
            "<TE;>;"
        }
    .end annotation
.end method

.method zzb()[Ljava/lang/Object;
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    throw v1
.end method

.method zzc()I
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    throw v1
.end method

.method zzd()I
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    throw v1
.end method

.method public zze()Lcom/google/android/gms/internal/common/zzu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/common/zzu",
            "<TE;>;"
        }
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    throw v1
.end method

.method abstract zzf()Z
.end method

.method zzg([Ljava/lang/Object;I)I
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v3, 0x0

    throw v3
.end method
