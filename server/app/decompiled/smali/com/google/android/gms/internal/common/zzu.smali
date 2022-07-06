.class public abstract Lcom/google/android/gms/internal/common/zzu;
.super Lcom/google/android/gms/internal/common/zzq;
.source "com.google.android.gms:play-services-basement@@17.6.0"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/common/zzq",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/common/zzy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/common/zzy",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    new-instance v1, Lcom/google/android/gms/internal/common/zzs;

    move-object v0, v1

    move-object v1, v0

    .line 1
    sget-object v2, Lcom/google/android/gms/internal/common/zzw;->zza:Lcom/google/android/gms/internal/common/zzu;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/common/zzs;-><init>(Lcom/google/android/gms/internal/common/zzu;I)V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/internal/common/zzu;->zza:Lcom/google/android/gms/internal/common/zzy;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-direct {v1}, Lcom/google/android/gms/internal/common/zzq;-><init>()V

    return-void
.end method

.method public static zzi()Lcom/google/android/gms/internal/common/zzu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/common/zzu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/common/zzw;->zza:Lcom/google/android/gms/internal/common/zzu;

    return-object v0
.end method

.method public static zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzu;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/android/gms/internal/common/zzu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    move-object v1, v2

    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    aput-object v4, v2, v3

    move-object v2, v1

    const/4 v3, 0x1

    .line 1
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/common/zzv;->zza([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v2, v1

    const/4 v3, 0x1

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/common/zzu;->zzn([Ljava/lang/Object;I)Lcom/google/android/gms/internal/common/zzu;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static zzk(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzu;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Lcom/google/android/gms/internal/common/zzu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    move-object v2, v3

    move-object v3, v2

    const/4 v4, 0x0

    move-object v5, v0

    aput-object v5, v3, v4

    move-object v3, v2

    const/4 v4, 0x1

    move-object v5, v1

    aput-object v5, v3, v4

    move-object v3, v2

    const/4 v4, 0x2

    .line 1
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/common/zzv;->zza([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    move-object v3, v2

    const/4 v4, 0x2

    .line 2
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/common/zzu;->zzn([Ljava/lang/Object;I)Lcom/google/android/gms/internal/common/zzu;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static zzl(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/common/zzu;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/android/gms/internal/common/zzu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v3, v0

    if-eqz v3, :cond_2

    move-object v3, v0

    .line 1
    instance-of v3, v3, Ljava/util/Collection;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 2
    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lcom/google/android/gms/internal/common/zzu;->zzm(Ljava/util/Collection;)Lcom/google/android/gms/internal/common/zzu;

    move-result-object v3

    move-object v0, v3

    :goto_0
    move-object v3, v0

    move-object v0, v3

    return-object v0

    :cond_0
    move-object v3, v0

    .line 3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v3

    move-object v3, v0

    .line 4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    sget-object v3, Lcom/google/android/gms/internal/common/zzw;->zza:Lcom/google/android/gms/internal/common/zzu;

    move-object v0, v3

    goto :goto_0

    :cond_1
    move-object v3, v0

    .line 6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    move-object v3, v0

    .line 7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    move-object v3, v1

    .line 8
    invoke-static {v3}, Lcom/google/android/gms/internal/common/zzu;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzu;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 12
    throw v3

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/common/zzr;

    move-object v2, v3

    move-object v3, v2

    const/4 v4, 0x4

    .line 9
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/common/zzr;-><init>(I)V

    move-object v3, v2

    move-object v4, v1

    .line 10
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/common/zzr;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzr;

    move-result-object v3

    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/common/zzr;->zzc(Ljava/util/Iterator;)Lcom/google/android/gms/internal/common/zzr;

    move-result-object v3

    move-object v3, v2

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/gms/internal/common/zzr;->zzc:Z

    move-object v3, v2

    iget-object v3, v3, Lcom/google/android/gms/internal/common/zzr;->zza:[Ljava/lang/Object;

    move-object v4, v2

    iget v4, v4, Lcom/google/android/gms/internal/common/zzr;->zzb:I

    .line 11
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/common/zzu;->zzn([Ljava/lang/Object;I)Lcom/google/android/gms/internal/common/zzu;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public static zzm(Ljava/util/Collection;)Lcom/google/android/gms/internal/common/zzu;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/android/gms/internal/common/zzu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    .line 1
    instance-of v2, v2, Lcom/google/android/gms/internal/common/zzq;

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 2
    check-cast v2, Lcom/google/android/gms/internal/common/zzq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/common/zzq;->zze()Lcom/google/android/gms/internal/common/zzu;

    move-result-object v2

    move-object v0, v2

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/common/zzu;->zzf()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/common/zzq;->toArray()[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    move-object v2, v0

    move-object v3, v0

    .line 4
    array-length v3, v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/common/zzu;->zzn([Ljava/lang/Object;I)Lcom/google/android/gms/internal/common/zzu;

    move-result-object v2

    move-object v0, v2

    .line 7
    :goto_0
    return-object v0

    .line 4
    :cond_0
    move-object v2, v0

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 5
    invoke-interface {v2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    move-object v2, v0

    .line 6
    array-length v2, v2

    move v1, v2

    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/common/zzv;->zza([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v2, v0

    move v3, v1

    .line 7
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/common/zzu;->zzn([Ljava/lang/Object;I)Lcom/google/android/gms/internal/common/zzu;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method static zzn([Ljava/lang/Object;I)Lcom/google/android/gms/internal/common/zzu;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/android/gms/internal/common/zzu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-nez v3, :cond_0

    .line 1
    sget-object v3, Lcom/google/android/gms/internal/common/zzw;->zza:Lcom/google/android/gms/internal/common/zzu;

    move-object v0, v3

    .line 2
    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/common/zzw;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/common/zzw;-><init>([Ljava/lang/Object;I)V

    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v0, v3

    move-object v3, v0

    .line 1
    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    move-object v3, v0

    throw v3
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v0, v3

    move-object v3, v0

    .line 1
    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    move-object v3, v0

    throw v3
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    .line 1
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/common/zzu;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    move-object v5, v0

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move v0, v4

    :goto_0
    move v4, v0

    move v0, v4

    return v0

    :cond_0
    move-object v4, v1

    .line 1
    instance-of v4, v4, Ljava/util/List;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_1
    move-object v4, v1

    .line 2
    check-cast v4, Ljava/util/List;

    move-object v2, v4

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v3, v4

    move v4, v3

    move-object v5, v2

    .line 3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_2
    move-object v4, v2

    .line 4
    instance-of v4, v4, Ljava/util/RandomAccess;

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    move v1, v4

    :goto_1
    move v4, v1

    move v5, v3

    if-ge v4, v5, :cond_4

    move-object v4, v0

    move v5, v1

    .line 5
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v2

    move v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/common/zzk;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    :cond_5
    move-object v4, v0

    .line 6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v0, v4

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :cond_6
    move-object v4, v0

    .line 7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, v1

    .line 8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_7
    move-object v4, v0

    .line 9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    .line 10
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 11
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/common/zzk;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_8
    move-object v4, v1

    .line 12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    :cond_9
    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/common/zzu;->size()I

    move-result v4

    move v3, v4

    const/4 v4, 0x1

    move v1, v4

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_0

    move v4, v1

    const/16 v5, 0x1f

    mul-int/lit8 v4, v4, 0x1f

    move-object v5, v0

    move v6, v2

    .line 1
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/common/zzu;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    move v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v4, v1

    move v0, v4

    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-nez v4, :cond_0

    const/4 v4, -0x1

    move v0, v4

    .line 1
    :goto_0
    return v0

    .line 4294967295
    :cond_0
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v3, v4

    const/4 v4, 0x0

    move v2, v4

    :goto_1
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_2

    move-object v4, v1

    move-object v5, v0

    move v6, v2

    .line 1
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    move v0, v4

    :goto_2
    move v4, v0

    move v0, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    move v0, v4

    goto :goto_2
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/common/zzu;->zzo(I)Lcom/google/android/gms/internal/common/zzy;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, -0x1

    move v0, v3

    .line 1
    :goto_0
    return v0

    .line 4294967295
    :cond_0
    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, -0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_1
    move v3, v2

    if-ltz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    move v5, v2

    .line 1
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    move v0, v3

    :goto_2
    move v3, v0

    move v0, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    move v0, v3

    goto :goto_2
.end method

.method public final bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/common/zzu;->zzo(I)Lcom/google/android/gms/internal/common/zzy;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/common/zzu;->zzo(I)Lcom/google/android/gms/internal/common/zzy;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v0, v2

    move-object v2, v0

    .line 1
    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    move-object v2, v0

    throw v2
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v0, v3

    move-object v3, v0

    .line 1
    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    move-object v3, v0

    throw v3
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/common/zzu;->zzh(II)Lcom/google/android/gms/internal/common/zzu;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/common/zzx;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/common/zzx",
            "<TE;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/common/zzu;->zzo(I)Lcom/google/android/gms/internal/common/zzy;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/common/zzu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/common/zzu",
            "<TE;>;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method zzg([Ljava/lang/Object;I)I
    .locals 8

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/common/zzu;->size()I

    move-result v4

    move v3, v4

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_0

    move-object v4, v1

    move v5, v2

    move-object v6, v0

    move v7, v2

    .line 1
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/common/zzu;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    move v0, v4

    return v0
.end method

.method public zzh(II)Lcom/google/android/gms/internal/common/zzu;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/common/zzu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    move v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/gms/internal/common/zzu;->size()I

    move-result v6

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/common/zzl;->zzc(III)V

    move v4, v2

    move v5, v1

    sub-int/2addr v4, v5

    move v2, v4

    move v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/common/zzu;->size()I

    move-result v5

    if-ne v4, v5, :cond_0

    move-object v4, v0

    move-object v0, v4

    .line 3
    :goto_0
    return-object v0

    .line 1
    :cond_0
    move v4, v2

    if-nez v4, :cond_1

    .line 3
    sget-object v4, Lcom/google/android/gms/internal/common/zzw;->zza:Lcom/google/android/gms/internal/common/zzu;

    move-object v0, v4

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/google/android/gms/internal/common/zzt;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v0

    move v6, v1

    move v7, v2

    .line 2
    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/internal/common/zzt;-><init>(Lcom/google/android/gms/internal/common/zzu;II)V

    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public final zzo(I)Lcom/google/android/gms/internal/common/zzy;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/internal/common/zzy",
            "<TE;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/common/zzu;->size()I

    move-result v4

    const-string v5, "index"

    .line 1
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/common/zzl;->zzb(IILjava/lang/String;)I

    move-result v3

    move-object v3, v0

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/common/zzu;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/google/android/gms/internal/common/zzu;->zza:Lcom/google/android/gms/internal/common/zzy;

    move-object v0, v3

    .line 3
    :goto_0
    return-object v0

    .line 2
    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/common/zzs;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v0

    move v5, v1

    .line 3
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/common/zzs;-><init>(Lcom/google/android/gms/internal/common/zzu;I)V

    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method
