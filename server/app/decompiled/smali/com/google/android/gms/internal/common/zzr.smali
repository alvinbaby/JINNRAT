.class public final Lcom/google/android/gms/internal/common/zzr;
.super Lcom/google/android/gms/internal/common/zzo;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/common/zzo",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x4

    .line 1
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/common/zzo;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 4

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x4

    .line 2
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/common/zzo;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzr;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/android/gms/internal/common/zzr",
            "<TE;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    .line 1
    invoke-super {v2, v3}, Lcom/google/android/gms/internal/common/zzo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzo;

    move-result-object v2

    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public final zzc(Ljava/util/Iterator;)Lcom/google/android/gms/internal/common/zzr;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/google/android/gms/internal/common/zzr",
            "<TE;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    :goto_0
    move-object v2, v1

    .line 1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    .line 2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 3
    invoke-super {v2, v3}, Lcom/google/android/gms/internal/common/zzo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzo;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method
