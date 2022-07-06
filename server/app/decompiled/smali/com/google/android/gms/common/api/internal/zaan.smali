.class final Lcom/google/android/gms/common/api/internal/zaan;
.super Lcom/google/android/gms/common/api/internal/zabb;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zaar;

.field final synthetic zab:Lcom/google/android/gms/signin/internal/zak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaao;Lcom/google/android/gms/common/api/internal/zaba;Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 7

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/zaan;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/zaan;->zab:Lcom/google/android/gms/signin/internal/zak;

    move-object v5, v0

    move-object v6, v2

    .line 1
    invoke-direct {v5, v6}, Lcom/google/android/gms/common/api/internal/zabb;-><init>(Lcom/google/android/gms/common/api/internal/zaba;)V

    return-void
.end method


# virtual methods
.method public final zaa()V
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaan;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaan;->zab:Lcom/google/android/gms/signin/internal/zak;

    .line 1
    invoke-static {v1, v2}, Lcom/google/android/gms/common/api/internal/zaar;->zay(Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/signin/internal/zak;)V

    return-void
.end method
