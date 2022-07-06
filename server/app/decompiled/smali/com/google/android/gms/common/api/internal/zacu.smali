.class final Lcom/google/android/gms/common/api/internal/zacu;
.super Lcom/google/android/gms/internal/base/zap;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zacv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zacv;Landroid/os/Looper;)V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zacu;->zaa:Lcom/google/android/gms/common/api/internal/zacv;

    move-object v3, v0

    move-object v4, v2

    .line 1
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/base/zap;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    .line 1
    iget v4, v4, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 11
    move-object v4, v1

    .line 13
    iget v4, v4, Landroid/os/Message;->what:I

    move v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v1, v4

    move-object v4, v1

    const/16 v5, 0x46

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v1

    const-string v5, "TransformationResultHandler received unknown message type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v1

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v4, "TransformedResultImpl"

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    :goto_0
    return-void

    .line 1
    :pswitch_0
    move-object v4, v1

    .line 2
    iget-object v4, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/RuntimeException;

    move-object v1, v4

    move-object v4, v1

    .line 3
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    const-string v4, "Runtime exception on the transformation worker thread: "

    move-object v2, v4

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    :goto_1
    const-string v4, "TransformedResultImpl"

    move-object v5, v0

    .line 4
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object v4, v1

    .line 5
    throw v4

    :pswitch_1
    move-object v4, v1

    .line 6
    iget-object v4, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/common/api/PendingResult;

    move-object v1, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zacu;->zaa:Lcom/google/android/gms/common/api/internal/zacv;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zacv;->zag(Lcom/google/android/gms/common/api/internal/zacv;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    monitor-enter v4

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zacu;->zaa:Lcom/google/android/gms/common/api/internal/zacv;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zacv;->zah(Lcom/google/android/gms/common/api/internal/zacv;)Lcom/google/android/gms/common/api/internal/zacv;

    move-result-object v4

    move-object v0, v4

    move-object v4, v0

    .line 7
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/internal/zacv;

    move-object v0, v4

    move-object v4, v1

    if-nez v4, :cond_0

    .line 8
    new-instance v4, Lcom/google/android/gms/common/api/Status;

    move-object v1, v4

    move-object v4, v1

    const/16 v5, 0xd

    const-string v6, "Transform returned null"

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/google/android/gms/common/api/internal/zacv;->zai(Lcom/google/android/gms/common/api/internal/zacv;Lcom/google/android/gms/common/api/Status;)V

    :goto_2
    move-object v4, v2

    .line 12
    monitor-exit v4

    goto :goto_0

    :cond_0
    move-object v4, v1

    .line 9
    instance-of v4, v4, Lcom/google/android/gms/common/api/internal/zack;

    move v3, v4

    move v4, v3

    if-eqz v4, :cond_1

    move-object v4, v0

    move-object v5, v1

    .line 10
    check-cast v5, Lcom/google/android/gms/common/api/internal/zack;

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zack;->zaa()Lcom/google/android/gms/common/api/Status;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/common/api/internal/zacv;->zai(Lcom/google/android/gms/common/api/internal/zacv;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2

    :cond_1
    move-object v4, v0

    move-object v5, v1

    .line 11
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zacv;->zaa(Lcom/google/android/gms/common/api/PendingResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 13
    :cond_2
    new-instance v4, Ljava/lang/String;

    move-object v0, v4

    move-object v4, v0

    move-object v5, v2

    .line 3
    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v4

    move-object v0, v4

    .line 12
    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    move-object v4, v0

    .line 12
    throw v4

    .line 1
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
