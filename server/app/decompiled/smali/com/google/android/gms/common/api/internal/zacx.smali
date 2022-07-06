.class public final Lcom/google/android/gms/common/api/internal/zacx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"


# static fields
.field public static final zaa:Lcom/google/android/gms/common/api/Status;


# instance fields
.field final zab:Ljava/util/Set;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/internal/BasePendingResult",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zac:Lcom/google/android/gms/common/api/internal/zacw;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    move-object v0, v1

    move-object v1, v0

    const/16 v2, 0x8

    const-string v3, "The connection to Google Play services was lost"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/api/internal/zacx;->zaa:Lcom/google/android/gms/common/api/Status;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/WeakHashMap;

    move-object v1, v2

    move-object v2, v1

    .line 1
    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    move-object v2, v0

    move-object v3, v1

    .line 2
    invoke-static {v3}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v3

    .line 3
    invoke-static {v3}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zacx;->zab:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/common/api/internal/zacw;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    .line 4
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/zacw;-><init>(Lcom/google/android/gms/common/api/internal/zacx;)V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zacx;->zac:Lcom/google/android/gms/common/api/internal/zacw;

    return-void
.end method


# virtual methods
.method final zaa(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BasePendingResult",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zacx;->zab:Ljava/util/Set;

    move-object v3, v1

    .line 1
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zacx;->zac:Lcom/google/android/gms/common/api/internal/zacw;

    .line 2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zan(Lcom/google/android/gms/common/api/internal/zacw;)V

    return-void
.end method

.method public final zab()V
    .locals 7

    .prologue
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zacx;->zab:Ljava/util/Set;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 1
    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    move-object v2, v5

    move-object v5, v2

    .line 2
    array-length v5, v5

    move v3, v5

    const/4 v5, 0x0

    move v1, v5

    :goto_0
    move v5, v1

    move v6, v3

    if-ge v5, v6, :cond_1

    move-object v5, v2

    move v6, v1

    aget-object v5, v5, v6

    move-object v4, v5

    move-object v5, v4

    const/4 v6, 0x0

    .line 3
    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zan(Lcom/google/android/gms/common/api/internal/zacw;)V

    move-object v5, v4

    .line 4
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaj()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zacx;->zab:Ljava/util/Set;

    move-object v6, v4

    .line 5
    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
