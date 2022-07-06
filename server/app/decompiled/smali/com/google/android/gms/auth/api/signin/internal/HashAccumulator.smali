.class public Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field static zaa:I
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private zab:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1f

    sput v0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaa:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zab:I

    return-void
.end method


# virtual methods
.method public addObject(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    sget v3, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaa:I

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zab:I

    mul-int/2addr v3, v4

    move v2, v3

    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move-object v3, v0

    move v4, v2

    move v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zab:I

    move-object v3, v0

    move-object v0, v3

    return-object v0

    :cond_0
    move-object v3, v1

    .line 1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    move v1, v3

    goto :goto_0
.end method

.method public hash()I
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zab:I

    move v0, v1

    return v0
.end method

.method public final zaa(Z)Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;
    .locals 5
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    sget v3, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaa:I

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zab:I

    mul-int/2addr v3, v4

    move v4, v1

    add-int/2addr v3, v4

    iput v3, v2, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zab:I

    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method
