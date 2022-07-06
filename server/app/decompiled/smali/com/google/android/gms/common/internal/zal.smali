.class public final Lcom/google/android/gms/common/internal/zal;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field private final zaa:Landroid/util/SparseIntArray;

.field private zab:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/internal/zal;-><init>(Lcom/google/android/gms/common/GoogleApiAvailabilityLight;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/GoogleApiAvailabilityLight;)V
    .locals 5
    .param p1    # Lcom/google/android/gms/common/GoogleApiAvailabilityLight;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroid/util/SparseIntArray;

    move-object v2, v3

    move-object v3, v2

    .line 2
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/internal/zal;->zaa:Landroid/util/SparseIntArray;

    move-object v3, v1

    .line 3
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/internal/zal;->zab:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    return-void
.end method


# virtual methods
.method public final zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/Api$Client;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    .line 1
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v2

    .line 2
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v2

    .line 3
    invoke-interface {v5}, Lcom/google/android/gms/common/api/Api$Client;->requiresGooglePlayServices()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 5
    :goto_0
    return v0

    .line 3
    :cond_0
    move-object v5, v2

    .line 4
    invoke-interface {v5}, Lcom/google/android/gms/common/api/Api$Client;->getMinApkVersion()I

    move-result v5

    move v3, v5

    move-object v5, v0

    move-object v6, v1

    move v7, v3

    .line 5
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/common/internal/zal;->zab(Landroid/content/Context;I)I

    move-result v5

    move v2, v5

    move v5, v2

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    move v5, v2

    move v0, v5

    :goto_1
    move v5, v0

    move v0, v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    move v2, v5

    :goto_2
    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/internal/zal;->zaa:Landroid/util/SparseIntArray;

    .line 6
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/internal/zal;->zaa:Landroid/util/SparseIntArray;

    move v6, v2

    .line 7
    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    move v4, v5

    move v5, v4

    move v6, v3

    if-le v5, v6, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/internal/zal;->zaa:Landroid/util/SparseIntArray;

    move v6, v4

    .line 8
    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x0

    move v2, v5

    :goto_3
    move v5, v2

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/internal/zal;->zab:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-object v6, v1

    move v7, v3

    .line 9
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result v5

    move v1, v5

    :goto_4
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/internal/zal;->zaa:Landroid/util/SparseIntArray;

    move v6, v3

    move v7, v1

    .line 10
    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    move v5, v1

    move v0, v5

    goto :goto_1

    :cond_2
    move v5, v2

    move v1, v5

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, -0x1

    move v2, v5

    goto :goto_3
.end method

.method public final zab(Landroid/content/Context;I)I
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/internal/zal;->zaa:Landroid/util/SparseIntArray;

    move v4, v2

    const/4 v5, -0x1

    .line 1
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public final zac()V
    .locals 2

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zal;->zaa:Landroid/util/SparseIntArray;

    .line 1
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method
