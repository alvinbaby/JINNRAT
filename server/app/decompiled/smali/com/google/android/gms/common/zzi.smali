.class abstract Lcom/google/android/gms/common/zzi;
.super Lcom/google/android/gms/common/internal/zzx;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# instance fields
.field private final zza:I


# direct methods
.method protected constructor <init>([B)V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    .line 1
    invoke-direct {v3}, Lcom/google/android/gms/common/internal/zzx;-><init>()V

    move-object v3, v1

    .line 2
    array-length v3, v3

    const/16 v4, 0x19

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v2, v3

    :goto_0
    move v3, v2

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    move-object v3, v0

    move-object v4, v1

    .line 3
    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    iput v4, v3, Lcom/google/android/gms/common/zzi;->zza:I

    return-void

    :cond_0
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0
.end method

.method protected static zzf(Ljava/lang/String;)[B
    .locals 4

    .prologue
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    const-string v3, "ISO-8859-1"

    .line 1
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 2
    move-object v2, v0

    move-object v0, v2

    return-object v0

    .line 1
    :catch_0
    move-exception v2

    move-object v0, v2

    new-instance v2, Ljava/lang/AssertionError;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    .line 2
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    move-object v2, v1

    throw v2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 1
    instance-of v4, v4, Lcom/google/android/gms/common/internal/zzy;

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    move v0, v4

    .line 7
    :goto_0
    return v0

    .line 1
    :cond_1
    move-object v4, v1

    .line 2
    :try_start_0
    check-cast v4, Lcom/google/android/gms/common/internal/zzy;

    move-object v1, v4

    move-object v4, v1

    .line 3
    invoke-interface {v4}, Lcom/google/android/gms/common/internal/zzy;->zze()I

    move-result v4

    move v2, v4

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/common/zzi;->zza:I

    move v3, v4

    move v4, v2

    move v5, v3

    if-eq v4, v5, :cond_2

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_2
    move-object v4, v1

    .line 4
    invoke-interface {v4}, Lcom/google/android/gms/common/internal/zzy;->zzd()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    move-object v1, v4

    move-object v4, v1

    if-nez v4, :cond_3

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_3
    move-object v4, v1

    .line 5
    invoke-static {v4}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    move-object v4, v1

    check-cast v4, [B

    move-object v1, v4

    move-object v4, v0

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/common/zzi;->zzc()[B

    move-result-object v4

    move-object v5, v1

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v0, v4

    move v4, v0

    move v0, v4

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v0, v4

    const-string v4, "GoogleCertificates"

    const-string v5, "Failed to get Google certificates from remote"

    move-object v6, v0

    .line 7
    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/common/zzi;->zza:I

    move v0, v1

    return v0
.end method

.method abstract zzc()[B
.end method

.method public final zzd()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 2

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/common/zzi;->zzc()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final zze()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/common/zzi;->zza:I

    move v0, v1

    return v0
.end method
