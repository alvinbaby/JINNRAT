.class final Lcom/google/android/gms/common/api/internal/zabx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

.field private final zab:I

.field private final zac:Lcom/google/android/gms/common/api/internal/ApiKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/ApiKey",
            "<*>;"
        }
    .end annotation
.end field

.field private final zad:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;ILcom/google/android/gms/common/api/internal/ApiKey;JLjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/GoogleApiManager;",
            "I",
            "Lcom/google/android/gms/common/api/internal/ApiKey",
            "<*>;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/google/android/gms/common/api/internal/zabx;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-object v8, v0

    move v9, v2

    iput v9, v8, Lcom/google/android/gms/common/api/internal/zabx;->zab:I

    move-object v8, v0

    move-object v9, v3

    iput-object v9, v8, Lcom/google/android/gms/common/api/internal/zabx;->zac:Lcom/google/android/gms/common/api/internal/ApiKey;

    move-object v8, v0

    move-wide v9, v4

    iput-wide v9, v8, Lcom/google/android/gms/common/api/internal/zabx;->zad:J

    return-void
.end method

.method static zaa(Lcom/google/android/gms/common/api/internal/GoogleApiManager;ILcom/google/android/gms/common/api/internal/ApiKey;)Lcom/google/android/gms/common/api/internal/zabx;
    .locals 18
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/internal/GoogleApiManager;",
            "I",
            "Lcom/google/android/gms/common/api/internal/ApiKey",
            "<*>;)",
            "Lcom/google/android/gms/common/api/internal/zabx",
            "<TT;>;"
        }
    .end annotation

    .prologue
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object v10, v1

    .line 1
    invoke-virtual {v10}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam()Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, 0x0

    move-object v1, v10

    .line 12
    :goto_0
    return-object v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->getInstance()Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->getConfig()Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    move-result-object v10

    move-object v4, v10

    move-object v10, v4

    if-eqz v10, :cond_6

    move-object v10, v4

    .line 3
    invoke-virtual {v10}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->getMethodInvocationTelemetryEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x0

    move-object v1, v10

    goto :goto_0

    :cond_1
    move-object v10, v4

    .line 4
    invoke-virtual {v10}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->getMethodTimingTelemetryEnabled()Z

    move-result v10

    move v4, v10

    move-object v10, v1

    move-object v11, v3

    .line 5
    invoke-virtual {v10, v11}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag(Lcom/google/android/gms/common/api/internal/ApiKey;)Lcom/google/android/gms/common/api/internal/zabl;

    move-result-object v10

    move-object v5, v10

    move-object v10, v5

    if-eqz v10, :cond_4

    move-object v10, v5

    invoke-virtual {v10}, Lcom/google/android/gms/common/api/internal/zabl;->zaf()Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v10

    .line 6
    instance-of v10, v10, Lcom/google/android/gms/common/internal/BaseGmsClient;

    if-nez v10, :cond_2

    const/4 v10, 0x0

    move-object v1, v10

    goto :goto_0

    :cond_2
    move-object v10, v5

    invoke-virtual {v10}, Lcom/google/android/gms/common/api/internal/zabl;->zaf()Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v10

    .line 7
    check-cast v10, Lcom/google/android/gms/common/internal/BaseGmsClient;

    move-object v6, v10

    move-object v10, v6

    .line 8
    invoke-virtual {v10}, Lcom/google/android/gms/common/internal/BaseGmsClient;->hasConnectionInfo()Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v10, v6

    invoke-virtual {v10}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    move-result v10

    if-nez v10, :cond_4

    move-object v10, v5

    move-object v11, v6

    move v12, v2

    .line 9
    invoke-static {v10, v11, v12}, Lcom/google/android/gms/common/api/internal/zabx;->zab(Lcom/google/android/gms/common/api/internal/zabl;Lcom/google/android/gms/common/internal/BaseGmsClient;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    move-result-object v10

    move-object v4, v10

    move-object v10, v4

    if-nez v10, :cond_3

    const/4 v10, 0x0

    move-object v1, v10

    goto :goto_0

    :cond_3
    move-object v10, v5

    .line 10
    invoke-virtual {v10}, Lcom/google/android/gms/common/api/internal/zabl;->zas()V

    move-object v10, v4

    .line 11
    invoke-virtual {v10}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->getMethodTimingTelemetryEnabled()Z

    move-result v10

    move v4, v10

    :cond_4
    :goto_1
    new-instance v10, Lcom/google/android/gms/common/api/internal/zabx;

    move-object v7, v10

    move v10, v4

    if-eqz v10, :cond_5

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-wide v8, v10

    move-wide v10, v8

    move-wide v5, v10

    :goto_2
    move-object v10, v7

    move-object v11, v1

    move v12, v2

    move-object v13, v3

    move-wide v14, v5

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v17}, Lcom/google/android/gms/common/api/internal/zabx;-><init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;ILcom/google/android/gms/common/api/internal/ApiKey;JLjava/lang/String;Ljava/lang/String;)V

    move-object v10, v7

    move-object v1, v10

    goto :goto_0

    :cond_5
    const-wide/16 v10, 0x0

    move-wide v5, v10

    goto :goto_2

    :cond_6
    const/4 v10, 0x1

    move v4, v10

    goto :goto_1
.end method

.method private static zab(Lcom/google/android/gms/common/api/internal/zabl;Lcom/google/android/gms/common/internal/BaseGmsClient;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zabl",
            "<*>;",
            "Lcom/google/android/gms/common/internal/BaseGmsClient",
            "<*>;I)",
            "Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    .line 1
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getTelemetryConfiguration()Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    move-result-object v4

    move-object v1, v4

    move-object v4, v1

    if-eqz v4, :cond_3

    move-object v4, v1

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->getMethodInvocationTelemetryEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v1

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->getMethodInvocationMethodKeyAllowlist()[I

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    if-nez v4, :cond_4

    move-object v4, v1

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->getMethodInvocationMethodKeyDisallowlist()[I

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    if-nez v4, :cond_2

    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabl;->zar()I

    move-result v4

    move-object v5, v1

    .line 7
    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->getMaxMethodInvocationsLogged()I

    move-result v5

    if-ge v4, v5, :cond_1

    move-object v4, v1

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    :cond_2
    move-object v4, v3

    move v5, v2

    .line 5
    invoke-static {v4, v5}, Lcom/google/android/gms/common/util/ArrayUtils;->contains([II)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    :goto_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    :cond_4
    move-object v4, v3

    move v5, v2

    .line 6
    invoke-static {v4, v5}, Lcom/google/android/gms/common/util/ArrayUtils;->contains([II)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 29
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabx;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-object/from16 v18, v0

    .line 1
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam()Z

    move-result v18

    if-nez v18, :cond_0

    .line 27
    :goto_0
    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->getInstance()Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->getConfig()Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    move-result-object v18

    move-object/from16 v6, v18

    move-object/from16 v18, v6

    if-eqz v18, :cond_1

    move-object/from16 v18, v6

    .line 3
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->getMethodInvocationTelemetryEnabled()Z

    move-result v18

    if-eqz v18, :cond_10

    :cond_1
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabx;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabx;->zac:Lcom/google/android/gms/common/api/internal/ApiKey;

    move-object/from16 v19, v0

    .line 4
    invoke-virtual/range {v18 .. v19}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag(Lcom/google/android/gms/common/api/internal/ApiKey;)Lcom/google/android/gms/common/api/internal/zabl;

    move-result-object v18

    move-object/from16 v7, v18

    move-object/from16 v18, v7

    if-eqz v18, :cond_2

    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/common/api/internal/zabl;->zaf()Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v18

    .line 5
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    move/from16 v18, v0

    if-nez v18, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/common/api/internal/zabl;->zaf()Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v18

    .line 6
    check-cast v18, Lcom/google/android/gms/common/internal/BaseGmsClient;

    move-object/from16 v8, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/gms/common/api/internal/zabx;->zad:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_f

    const/16 v18, 0x1

    move/from16 v5, v18

    :goto_1
    move-object/from16 v18, v8

    .line 7
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getGCoreServiceId()I

    move-result v18

    move/from16 v14, v18

    move-object/from16 v18, v6

    if-eqz v18, :cond_e

    move/from16 v18, v5

    move-object/from16 v19, v6

    .line 8
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->getMethodTimingTelemetryEnabled()Z

    move-result v19

    and-int v18, v18, v19

    move/from16 v5, v18

    move-object/from16 v18, v6

    .line 9
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->getBatchPeriodMillis()I

    move-result v18

    move/from16 v9, v18

    move-object/from16 v18, v6

    .line 10
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->getMaxMethodInvocationsInBatch()I

    move-result v18

    move/from16 v10, v18

    move-object/from16 v18, v6

    .line 11
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->getVersion()I

    move-result v18

    move/from16 v11, v18

    move-object/from16 v18, v8

    .line 12
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/common/internal/BaseGmsClient;->hasConnectionInfo()Z

    move-result v18

    if-eqz v18, :cond_d

    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    move-result v18

    if-nez v18, :cond_c

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/google/android/gms/common/api/internal/zabx;->zab:I

    move/from16 v20, v0

    .line 13
    invoke-static/range {v18 .. v20}, Lcom/google/android/gms/common/api/internal/zabx;->zab(Lcom/google/android/gms/common/api/internal/zabl;Lcom/google/android/gms/common/internal/BaseGmsClient;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    move-result-object v18

    move-object/from16 v6, v18

    move-object/from16 v18, v6

    if-nez v18, :cond_4

    goto/16 :goto_0

    :cond_4
    move-object/from16 v18, v6

    .line 14
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->getMethodTimingTelemetryEnabled()Z

    move-result v18

    if-eqz v18, :cond_b

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/gms/common/api/internal/zabx;->zad:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_a

    const/16 v18, 0x1

    move/from16 v5, v18

    :goto_2
    move-object/from16 v18, v6

    .line 15
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->getMaxMethodInvocationsLogged()I

    move-result v18

    move/from16 v6, v18

    move/from16 v18, v9

    move/from16 v7, v18

    move/from16 v18, v11

    move/from16 v8, v18

    :goto_3
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabx;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-object/from16 v18, v0

    move-object/from16 v15, v18

    move-object/from16 v18, v4

    .line 16
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v18

    if-eqz v18, :cond_6

    const/16 v18, 0x0

    move/from16 v4, v18

    const/16 v18, 0x0

    move/from16 v9, v18

    :goto_4
    move/from16 v18, v5

    if-eqz v18, :cond_5

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/gms/common/api/internal/zabx;->zad:J

    move-wide/from16 v18, v0

    move-wide/from16 v12, v18

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v16, v18

    move-wide/from16 v18, v12

    move-wide/from16 v10, v18

    move-wide/from16 v18, v16

    move-wide/from16 v12, v18

    .line 25
    :goto_5
    new-instance v18, Lcom/google/android/gms/common/internal/MethodInvocation;

    move-object/from16 v5, v18

    move-object/from16 v18, v5

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/gms/common/api/internal/zabx;->zab:I

    move/from16 v19, v0

    move/from16 v20, v4

    move/from16 v21, v9

    move-wide/from16 v22, v10

    move-wide/from16 v24, v12

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v28, v14

    .line 26
    invoke-direct/range {v18 .. v28}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v18, v15

    move-object/from16 v19, v5

    move/from16 v20, v8

    move/from16 v21, v7

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move/from16 v23, v6

    .line 27
    invoke-virtual/range {v18 .. v23}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar(Lcom/google/android/gms/common/internal/MethodInvocation;IJI)V

    goto/16 :goto_0

    :cond_5
    const-wide/16 v18, 0x0

    move-wide/from16 v10, v18

    const-wide/16 v18, 0x0

    move-wide/from16 v12, v18

    goto :goto_5

    :cond_6
    move-object/from16 v18, v4

    .line 17
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result v18

    if-eqz v18, :cond_7

    const/16 v18, 0x64

    move/from16 v4, v18

    const/16 v18, -0x1

    move/from16 v9, v18

    goto :goto_4

    :cond_7
    move-object/from16 v18, v4

    .line 18
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v18

    move-object/from16 v4, v18

    move-object/from16 v18, v4

    .line 19
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/google/android/gms/common/api/ApiException;

    move/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v18, v4

    .line 20
    check-cast v18, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/common/api/ApiException;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v18

    move-object/from16 v4, v18

    move-object/from16 v18, v4

    .line 21
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v18

    move/from16 v10, v18

    move-object/from16 v18, v4

    .line 22
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/common/api/Status;->getConnectionResult()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v18

    move-object/from16 v4, v18

    move-object/from16 v18, v4

    if-nez v18, :cond_8

    const/16 v18, -0x1

    move/from16 v9, v18

    :goto_6
    move/from16 v18, v10

    move/from16 v4, v18

    goto/16 :goto_4

    :cond_8
    move-object/from16 v18, v4

    .line 23
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v18

    move/from16 v9, v18

    goto :goto_6

    :cond_9
    const/16 v18, 0x65

    move/from16 v4, v18

    const/16 v18, -0x1

    move/from16 v9, v18

    goto/16 :goto_4

    :cond_a
    const/16 v18, 0x0

    move/from16 v5, v18

    goto/16 :goto_2

    :cond_b
    const/16 v18, 0x0

    move/from16 v5, v18

    goto/16 :goto_2

    :cond_c
    move/from16 v18, v10

    move/from16 v6, v18

    move/from16 v18, v9

    move/from16 v7, v18

    move/from16 v18, v11

    move/from16 v8, v18

    goto/16 :goto_3

    :cond_d
    move/from16 v18, v10

    move/from16 v6, v18

    move/from16 v18, v9

    move/from16 v7, v18

    move/from16 v18, v11

    move/from16 v8, v18

    goto/16 :goto_3

    :cond_e
    const/16 v18, 0x64

    move/from16 v6, v18

    const/16 v18, 0x1388

    move/from16 v7, v18

    const/16 v18, 0x0

    move/from16 v8, v18

    goto/16 :goto_3

    :cond_f
    const/16 v18, 0x0

    move/from16 v5, v18

    goto/16 :goto_1

    :cond_10
    goto/16 :goto_0
.end method
