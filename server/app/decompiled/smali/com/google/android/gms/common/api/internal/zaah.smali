.class final Lcom/google/android/gms/common/api/internal/zaah;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zaar;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaar;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zaah;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaah;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zaar;->zaj(Lcom/google/android/gms/common/api/internal/zaar;)Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaah;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zaar;->zai(Lcom/google/android/gms/common/api/internal/zaar;)Landroid/content/Context;

    move-result-object v2

    .line 1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->cancelAvailabilityErrorNotifications(Landroid/content/Context;)V

    return-void
.end method
