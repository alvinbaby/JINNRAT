.class Lcom/google/android/gms/internal/common/zzo;
.super Lcom/google/android/gms/internal/common/zzp;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/common/zzp",
        "<TE;>;"
    }
.end annotation


# instance fields
.field zza:[Ljava/lang/Object;

.field zzb:I

.field zzc:Z


# direct methods
.method constructor <init>(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/gms/internal/common/zzp;-><init>()V

    move-object v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v2, Lcom/google/android/gms/internal/common/zzo;->zza:[Ljava/lang/Object;

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/android/gms/internal/common/zzo;->zzb:I

    return-void
.end method

.method private final zzb(I)V
    .locals 7

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/internal/common/zzo;->zza:[Ljava/lang/Object;

    move-object v2, v4

    move-object v4, v2

    .line 1
    array-length v4, v4

    move v3, v4

    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_2

    move v4, v3

    move v5, v3

    const/4 v6, 0x1

    shr-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_1

    move v4, v1

    const/4 v5, -0x1

    add-int/lit8 v4, v4, -0x1

    .line 2
    invoke-static {v4}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v4

    move v1, v4

    move v4, v1

    move v5, v1

    add-int/2addr v4, v5

    move v1, v4

    :goto_0
    move v4, v1

    if-gez v4, :cond_0

    const v4, 0x7fffffff

    move v1, v4

    :cond_0
    move-object v4, v0

    move-object v5, v2

    move v6, v1

    .line 3
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/internal/common/zzo;->zza:[Ljava/lang/Object;

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/android/gms/internal/common/zzo;->zzc:Z

    .line 4
    :goto_1
    return-void

    .line 3
    :cond_1
    move v4, v3

    move v1, v4

    goto :goto_0

    :cond_2
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/gms/internal/common/zzo;->zzc:Z

    if-eqz v4, :cond_3

    move-object v4, v0

    move-object v5, v2

    .line 4
    invoke-virtual {v5}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    iput-object v5, v4, Lcom/google/android/gms/internal/common/zzo;->zza:[Ljava/lang/Object;

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/android/gms/internal/common/zzo;->zzc:Z

    goto :goto_1

    :cond_3
    goto :goto_1
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/android/gms/internal/common/zzo",
            "<TE;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 3
    throw v4

    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/google/android/gms/internal/common/zzo;->zzb:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 1
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/common/zzo;->zzb(I)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/internal/common/zzo;->zza:[Ljava/lang/Object;

    move-object v2, v4

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/internal/common/zzo;->zzb:I

    move v3, v4

    move-object v4, v0

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/google/android/gms/internal/common/zzo;->zzb:I

    move-object v4, v2

    move v5, v3

    move-object v6, v1

    .line 2
    aput-object v6, v4, v5

    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method
