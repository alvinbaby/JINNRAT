.class final Lcom/google/android/gms/common/internal/service/zac;
.super Lcom/google/android/gms/common/internal/service/zaf;
.source "com.google.android.gms:play-services-base@@17.6.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/internal/service/zae;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v2

    .line 1
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/internal/service/zaf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/common/internal/service/zah;

    move-object v1, v3

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/service/zah;->getService()Landroid/os/IInterface;

    move-result-object v3

    move-object v1, v3

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/common/internal/service/zal;

    move-object v1, v3

    new-instance v3, Lcom/google/android/gms/common/internal/service/zad;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/internal/service/zad;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/internal/service/zal;->zae(Lcom/google/android/gms/common/internal/service/zak;)V

    return-void
.end method
