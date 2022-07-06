.class public final Lcom/google/android/gms/common/internal/service/zap;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "com.google.android.gms:play-services-base@@17.6.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/GmsClient",
        "<",
        "Lcom/google/android/gms/common/internal/service/zai;",
        ">;"
    }
.end annotation


# instance fields
.field private final zaa:Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V
    .locals 14

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    const/16 v10, 0x10e

    move-object v11, v3

    move-object v12, v5

    move-object v13, v6

    .line 1
    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lcom/google/android/gms/common/internal/service/zap;->zaa:Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    move-object v2, v0

    move-object v0, v2

    return-object v0

    :cond_0
    move-object v2, v1

    const-string v3, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    move-object v0, v2

    move-object v2, v0

    instance-of v2, v2, Lcom/google/android/gms/common/internal/service/zai;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/common/internal/service/zai;

    move-object v0, v2

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/common/internal/service/zai;

    move-object v0, v2

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/internal/service/zai;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 2

    .prologue
    .line 1
    move-object v0, p0

    sget-object v1, Lcom/google/android/gms/internal/base/zad;->zab:[Lcom/google/android/gms/common/Feature;

    move-object v0, v1

    return-object v0
.end method

.method protected final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 2

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/service/zap;->zaa:Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;->zaa()Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final getMinApkVersion()I
    .locals 2

    move-object v0, p0

    const v1, 0xc1f7c30

    move v0, v1

    return v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object v0, p0

    const-string v1, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    move-object v0, v1

    return-object v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object v0, p0

    const-string v1, "com.google.android.gms.common.telemetry.service.START"

    move-object v0, v1

    return-object v0
.end method

.method protected final getUseDynamicLookup()Z
    .locals 2

    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method
