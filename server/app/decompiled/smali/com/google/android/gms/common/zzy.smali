.class final Lcom/google/android/gms/common/zzy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# instance fields
.field private zza:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzb:J

.field private zzc:Lcom/google/android/gms/internal/common/zzu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/common/zzu",
            "<[B>;"
        }
    .end annotation
.end field

.field private zzd:Lcom/google/android/gms/internal/common/zzu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/common/zzu",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/common/zzy;->zza:Ljava/lang/String;

    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/google/android/gms/common/zzy;->zzb:J

    move-object v1, v0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/common/zzu;->zzi()Lcom/google/android/gms/internal/common/zzu;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/common/zzy;->zzc:Lcom/google/android/gms/internal/common/zzu;

    move-object v1, v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/common/zzu;->zzi()Lcom/google/android/gms/internal/common/zzu;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/common/zzy;->zzd:Lcom/google/android/gms/internal/common/zzu;

    return-void
.end method


# virtual methods
.method final zza(Ljava/lang/String;)Lcom/google/android/gms/common/zzy;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/zzy;->zza:Ljava/lang/String;

    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method final zzb(J)Lcom/google/android/gms/common/zzy;
    .locals 7

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/google/android/gms/common/zzy;->zzb:J

    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method final zzc(Ljava/util/List;)Lcom/google/android/gms/common/zzy;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)",
            "Lcom/google/android/gms/common/zzy;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v2, v0

    move-object v3, v1

    .line 2
    invoke-static {v3}, Lcom/google/android/gms/internal/common/zzu;->zzm(Ljava/util/Collection;)Lcom/google/android/gms/internal/common/zzu;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/common/zzy;->zzc:Lcom/google/android/gms/internal/common/zzu;

    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method final zzd(Ljava/util/List;)Lcom/google/android/gms/common/zzy;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)",
            "Lcom/google/android/gms/common/zzy;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v2, v0

    move-object v3, v1

    .line 2
    invoke-static {v3}, Lcom/google/android/gms/internal/common/zzu;->zzm(Ljava/util/Collection;)Lcom/google/android/gms/internal/common/zzu;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/common/zzy;->zzd:Lcom/google/android/gms/internal/common/zzu;

    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method final zze()Lcom/google/android/gms/common/zzz;
    .locals 9

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/zzy;->zza:Ljava/lang/String;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v0, v2

    move-object v2, v0

    const-string v3, "packageName must be defined"

    .line 1
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    throw v2

    :cond_0
    move-object v2, v0

    iget-wide v2, v2, Lcom/google/android/gms/common/zzy;->zzb:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v0, v2

    move-object v2, v0

    const-string v3, "minimumStampedVersionNumber must be greater than or equal to 0"

    .line 2
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    throw v2

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/zzy;->zzc:Lcom/google/android/gms/internal/common/zzu;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/common/zzu;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/zzy;->zzd:Lcom/google/android/gms/internal/common/zzu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/common/zzu;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v0, v2

    move-object v2, v0

    const-string v3, "Either orderedTestCerts or orderedProdCerts must have at least one cert"

    .line 5
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    throw v2

    :cond_2
    new-instance v2, Lcom/google/android/gms/common/zzz;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/zzy;->zza:Ljava/lang/String;

    move-object v4, v0

    iget-wide v4, v4, Lcom/google/android/gms/common/zzy;->zzb:J

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/zzy;->zzc:Lcom/google/android/gms/internal/common/zzu;

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/zzy;->zzd:Lcom/google/android/gms/internal/common/zzu;

    const/4 v8, 0x0

    .line 4
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/common/zzz;-><init>(Ljava/lang/String;JLcom/google/android/gms/internal/common/zzu;Lcom/google/android/gms/internal/common/zzu;Lcom/google/android/gms/common/zzx;)V

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method
