.class public final Lcom/google/android/gms/common/api/Batch;
.super Lcom/google/android/gms/common/api/internal/BasePendingResult;
.source "com.google.android.gms:play-services-base@@17.6.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/Batch$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/BasePendingResult",
        "<",
        "Lcom/google/android/gms/common/api/BatchResult;",
        ">;"
    }
.end annotation


# instance fields
.field private zae:I

.field private zaf:Z

.field private zag:Z

.field private final zah:[Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<*>;"
        }
    .end annotation
.end field

.field private final zai:Ljava/lang/Object;


# direct methods
.method synthetic constructor <init>(Ljava/util/List;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/zab;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance v5, Ljava/lang/Object;

    move-object v2, v5

    move-object v5, v2

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/android/gms/common/api/Batch;->zai:Ljava/lang/Object;

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v2, v5

    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/google/android/gms/common/api/Batch;->zae:I

    move-object v5, v0

    move v6, v2

    new-array v6, v6, [Lcom/google/android/gms/common/api/PendingResult;

    iput-object v6, v5, Lcom/google/android/gms/common/api/Batch;->zah:[Lcom/google/android/gms/common/api/PendingResult;

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    move-object v5, v1

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/PendingResult;

    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/Batch;->zah:[Lcom/google/android/gms/common/api/PendingResult;

    move v6, v2

    move-object v7, v3

    aput-object v7, v5, v6

    new-instance v5, Lcom/google/android/gms/common/api/zab;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/android/gms/common/api/zab;-><init>(Lcom/google/android/gms/common/api/Batch;)V

    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/api/PendingResult;->addStatusListener(Lcom/google/android/gms/common/api/PendingResult$StatusListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v5, Lcom/google/android/gms/common/api/BatchResult;

    move-object v1, v5

    move-object v5, v1

    sget-object v6, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/Batch;->zah:[Lcom/google/android/gms/common/api/PendingResult;

    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/common/api/BatchResult;-><init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/PendingResult;)V

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_1
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/Batch;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/Batch;->zai:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zab(Lcom/google/android/gms/common/api/Batch;Z)Z
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/gms/common/api/Batch;->zag:Z

    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method static synthetic zac(Lcom/google/android/gms/common/api/Batch;Z)Z
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/gms/common/api/Batch;->zaf:Z

    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method static synthetic zad(Lcom/google/android/gms/common/api/Batch;)I
    .locals 5

    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/google/android/gms/common/api/Batch;->zae:I

    move v1, v2

    move-object v2, v0

    move v3, v1

    const/4 v4, -0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/google/android/gms/common/api/Batch;->zae:I

    move v2, v1

    move v0, v2

    return v0
.end method

.method static synthetic zae(Lcom/google/android/gms/common/api/Batch;)I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/common/api/Batch;->zae:I

    move v0, v1

    return v0
.end method

.method static synthetic zaf(Lcom/google/android/gms/common/api/Batch;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/common/api/Batch;->zag:Z

    move v0, v1

    return v0
.end method

.method static synthetic zag(Lcom/google/android/gms/common/api/Batch;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->cancel()V

    return-void
.end method

.method static synthetic zah(Lcom/google/android/gms/common/api/Batch;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/common/api/Batch;->zaf:Z

    move v0, v1

    return v0
.end method

.method static synthetic zai(Lcom/google/android/gms/common/api/Batch;)[Lcom/google/android/gms/common/api/PendingResult;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/Batch;->zah:[Lcom/google/android/gms/common/api/PendingResult;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v3, v0

    .line 1
    invoke-super {v3}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->cancel()V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/Batch;->zah:[Lcom/google/android/gms/common/api/PendingResult;

    move-object v1, v3

    move-object v3, v1

    array-length v3, v3

    move v2, v3

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    move v3, v0

    move v4, v2

    if-ge v3, v4, :cond_0

    move-object v3, v1

    move v4, v0

    .line 2
    aget-object v3, v3, v4

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/PendingResult;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/BatchResult;
    .locals 6
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    .line 1
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Lcom/google/android/gms/common/api/BatchResult;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/Batch;->zah:[Lcom/google/android/gms/common/api/PendingResult;

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/api/BatchResult;-><init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/PendingResult;)V

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public final bridge synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 4
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/Batch;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/BatchResult;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
