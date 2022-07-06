.class public abstract Lcom/google/android/gms/common/api/internal/zap;
.super Lcom/google/android/gms/common/api/internal/LifecycleCallback;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field protected volatile zaa:Z

.field protected final zab:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/common/api/internal/zam;",
            ">;"
        }
    .end annotation
.end field

.field protected final zac:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private final zad:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;Lcom/google/android/gms/common/GoogleApiAvailability;)V
    .locals 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    .line 1
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    move-object v1, v3

    move-object v3, v1

    const/4 v4, 0x0

    .line 2
    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zap;->zab:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcom/google/android/gms/internal/base/zap;

    move-object v1, v3

    move-object v3, v1

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/base/zap;-><init>(Landroid/os/Looper;)V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zap;->zad:Landroid/os/Handler;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zap;->zac:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-void
.end method

.method private final zaa()V
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zap;->zab:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object v1, v0

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zap;->zae()V

    return-void
.end method

.method private final zab(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zap;->zab:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    .line 1
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    .line 2
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/common/api/internal/zap;->zad(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method private static final zac(Lcom/google/android/gms/common/api/internal/zam;)I
    .locals 2
    .param p0    # Lcom/google/android/gms/common/api/internal/zam;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, v0

    if-nez v1, :cond_0

    const/4 v1, -0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zam;->zaa()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method static synthetic zag(Lcom/google/android/gms/common/api/internal/zap;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zap;->zaa()V

    return-void
.end method

.method static synthetic zah(Lcom/google/android/gms/common/api/internal/zap;Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/api/internal/zap;->zab(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zap;->zab:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/internal/zam;

    move-object v4, v5

    move v5, v1

    packed-switch v5, :pswitch_data_0

    :cond_0
    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/zam;->zab()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v7}, Lcom/google/android/gms/common/api/internal/zam;->zaa()I

    move-result v7

    .line 9
    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/common/api/internal/zap;->zab(Lcom/google/android/gms/common/ConnectionResult;I)V

    :goto_0
    return-void

    :cond_1
    goto :goto_0

    :pswitch_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zap;->zac:Lcom/google/android/gms/common/GoogleApiAvailability;

    move-object v6, v0

    .line 2
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/zap;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v5

    move v1, v5

    move v5, v1

    if-nez v5, :cond_2

    move-object v5, v0

    .line 3
    invoke-direct {v5}, Lcom/google/android/gms/common/api/internal/zap;->zaa()V

    goto :goto_0

    :cond_2
    move-object v5, v4

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    move-object v5, v4

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zam;->zab()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v5

    .line 4
    invoke-virtual {v5}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v5

    const/16 v6, 0x12

    if-ne v5, v6, :cond_0

    move v5, v1

    const/16 v6, 0x12

    if-ne v5, v6, :cond_0

    goto :goto_0

    :pswitch_1
    move v5, v2

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    move-object v5, v0

    .line 5
    invoke-direct {v5}, Lcom/google/android/gms/common/api/internal/zap;->zaa()V

    goto :goto_0

    :cond_4
    move v5, v2

    if-nez v5, :cond_0

    move-object v5, v4

    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    move-object v5, v3

    if-eqz v5, :cond_6

    move-object v5, v3

    const-string v6, "<<ResolutionFailureErrorDetail>>"

    const/16 v7, 0xd

    .line 6
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move v1, v5

    .line 7
    :goto_1
    new-instance v5, Lcom/google/android/gms/common/ConnectionResult;

    move-object v2, v5

    move-object v5, v2

    move v6, v1

    const/4 v7, 0x0

    move-object v8, v4

    invoke-virtual {v8}, Lcom/google/android/gms/common/api/internal/zam;->zab()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v8

    .line 8
    invoke-virtual {v8}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    move-object v5, v0

    move-object v6, v2

    move-object v7, v4

    invoke-static {v7}, Lcom/google/android/gms/common/api/internal/zap;->zac(Lcom/google/android/gms/common/api/internal/zam;)I

    move-result v7

    .line 7
    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/common/api/internal/zap;->zab(Lcom/google/android/gms/common/ConnectionResult;I)V

    goto :goto_0

    :cond_6
    const/16 v5, 0xd

    move v1, v5

    goto :goto_1

    .line 1
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 5

    .prologue
    .line 1
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    move-object v1, v2

    move-object v2, v1

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zap;->zab:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/internal/zam;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zap;->zac(Lcom/google/android/gms/common/api/internal/zam;)I

    move-result v4

    .line 1
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/api/internal/zap;->zab(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    .line 1
    invoke-super {v4, v5}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onCreate(Landroid/os/Bundle;)V

    move-object v4, v1

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zap;->zab:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v2, v4

    move-object v4, v1

    const-string v5, "resolving_error"

    const/4 v6, 0x0

    .line 2
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3
    new-instance v4, Lcom/google/android/gms/common/ConnectionResult;

    move-object v0, v4

    move-object v4, v0

    move-object v5, v1

    const-string v6, "failed_status"

    .line 4
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object v6, v1

    const-string v7, "failed_resolution"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    move-object v4, v1

    const-string v5, "failed_client_id"

    const/4 v6, -0x1

    .line 5
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    move v1, v4

    new-instance v4, Lcom/google/android/gms/common/api/internal/zam;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v0

    move v6, v1

    .line 6
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/api/internal/zam;-><init>(Lcom/google/android/gms/common/ConnectionResult;I)V

    move-object v4, v3

    move-object v0, v4

    :goto_0
    move-object v4, v2

    move-object v5, v0

    .line 7
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    :cond_1
    goto :goto_1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    .line 1
    invoke-super {v2, v3}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onSaveInstanceState(Landroid/os/Bundle;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zap;->zab:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/zam;

    move-object v0, v2

    move-object v2, v0

    if-nez v2, :cond_0

    .line 6
    :goto_0
    return-void

    .line 2
    :cond_0
    move-object v2, v1

    const-string v3, "resolving_error"

    const/4 v4, 0x1

    .line 3
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v2, v1

    const-string v3, "failed_client_id"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zam;->zaa()I

    move-result v4

    .line 4
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    const-string v3, "failed_status"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zam;->zab()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    const-string v3, "failed_resolution"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zam;->zab()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-super {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onStart()V

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/common/api/internal/zap;->zaa:Z

    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-super {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onStop()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gms/common/api/internal/zap;->zaa:Z

    return-void
.end method

.method protected abstract zad(Lcom/google/android/gms/common/ConnectionResult;I)V
.end method

.method protected abstract zae()V
.end method

.method public final zaf(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 7

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    new-instance v4, Lcom/google/android/gms/common/api/internal/zam;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    move v6, v2

    .line 1
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/api/internal/zam;-><init>(Lcom/google/android/gms/common/ConnectionResult;I)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zap;->zab:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v5, 0x0

    move-object v6, v3

    .line 2
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zap;->zad:Landroid/os/Handler;

    move-object v1, v4

    new-instance v4, Lcom/google/android/gms/common/api/internal/zao;

    move-object v2, v4

    move-object v4, v2

    move-object v5, v0

    move-object v6, v3

    .line 3
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/api/internal/zao;-><init>(Lcom/google/android/gms/common/api/internal/zap;Lcom/google/android/gms/common/api/internal/zam;)V

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v4

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method
