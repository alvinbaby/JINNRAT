.class final Lcom/google/android/gms/common/api/internal/zaam;
.super Lcom/google/android/gms/common/api/internal/zaaq;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zaar;

.field private final zac:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaar;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    .line 1
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/api/internal/zaaq;-><init>(Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/common/api/internal/zaah;)V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zaam;->zac:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final zaa()V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zaar;->zal(Lcom/google/android/gms/common/api/internal/zaar;)Lcom/google/android/gms/common/api/internal/zabd;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    .line 1
    invoke-static {v5}, Lcom/google/android/gms/common/api/internal/zaar;->zap(Lcom/google/android/gms/common/api/internal/zaar;)Ljava/util/Set;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zaaz;->zad:Ljava/util/Set;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaam;->zac:Ljava/util/ArrayList;

    move-object v2, v4

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v3, v4

    const/4 v4, 0x0

    move v1, v4

    :goto_0
    move v4, v1

    move v5, v3

    if-ge v4, v5, :cond_0

    move-object v4, v2

    move v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 2
    check-cast v4, Lcom/google/android/gms/common/api/Api$Client;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-static {v5}, Lcom/google/android/gms/common/api/internal/zaar;->zaq(Lcom/google/android/gms/common/api/internal/zaar;)Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-static {v6}, Lcom/google/android/gms/common/api/internal/zaar;->zal(Lcom/google/android/gms/common/api/internal/zaar;)Lcom/google/android/gms/common/api/internal/zabd;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zad:Ljava/util/Set;

    .line 3
    invoke-interface {v4, v5, v6}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
