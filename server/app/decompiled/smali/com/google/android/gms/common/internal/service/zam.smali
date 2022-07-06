.class final synthetic Lcom/google/android/gms/common/internal/service/zam;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zaa:Lcom/google/android/gms/common/internal/TelemetryData;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/internal/TelemetryData;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/internal/service/zam;->zaa:Lcom/google/android/gms/common/internal/TelemetryData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/internal/service/zam;->zaa:Lcom/google/android/gms/common/internal/TelemetryData;

    move-object v0, v3

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/common/internal/service/zap;

    move-object v1, v3

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-object v2, v3

    sget v3, Lcom/google/android/gms/common/internal/service/zao;->zab:I

    move-object v3, v1

    .line 1
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/service/zap;->getService()Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/service/zai;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/internal/service/zai;->zae(Lcom/google/android/gms/common/internal/TelemetryData;)V

    move-object v3, v2

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
