.class abstract Lcom/google/android/gms/internal/common/zzn;
.super Lcom/google/android/gms/internal/common/zzy;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/common/zzy",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final zza:I

.field private zzb:I


# direct methods
.method protected constructor <init>(II)V
    .locals 6

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/gms/internal/common/zzy;-><init>()V

    move v3, v2

    move v4, v1

    const-string v5, "index"

    .line 1
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/common/zzl;->zzb(IILjava/lang/String;)I

    move-result v3

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/android/gms/internal/common/zzn;->zza:I

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/android/gms/internal/common/zzn;->zzb:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/internal/common/zzn;->zzb:I

    move-object v2, v0

    iget v2, v2, Lcom/google/android/gms/internal/common/zzn;->zza:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public final hasPrevious()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/internal/common/zzn;->zzb:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/common/zzn;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/NoSuchElementException;

    move-object v0, v2

    move-object v2, v0

    .line 1
    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    move-object v2, v0

    throw v2

    :cond_0
    move-object v2, v0

    iget v2, v2, Lcom/google/android/gms/internal/common/zzn;->zzb:I

    move v1, v2

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/common/zzn;->zzb:I

    move-object v2, v0

    move v3, v1

    .line 2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/common/zzn;->zza(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public final nextIndex()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/internal/common/zzn;->zzb:I

    move v0, v1

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/common/zzn;->hasPrevious()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/NoSuchElementException;

    move-object v0, v2

    move-object v2, v0

    .line 1
    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    move-object v2, v0

    throw v2

    :cond_0
    move-object v2, v0

    iget v2, v2, Lcom/google/android/gms/internal/common/zzn;->zzb:I

    const/4 v3, -0x1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/gms/internal/common/zzn;->zzb:I

    move-object v2, v0

    move v3, v1

    .line 2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/common/zzn;->zza(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public final previousIndex()I
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/internal/common/zzn;->zzb:I

    const/4 v2, -0x1

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    return v0
.end method

.method protected abstract zza(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method
