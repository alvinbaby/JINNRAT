.class final Lcom/google/android/gms/common/api/internal/zao;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zap;

.field private final zab:Lcom/google/android/gms/common/api/internal/zam;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zap;Lcom/google/android/gms/common/api/internal/zam;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zao;->zaa:Lcom/google/android/gms/common/api/internal/zap;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zao;->zab:Lcom/google/android/gms/common/api/internal/zam;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zao;->zaa:Lcom/google/android/gms/common/api/internal/zap;

    iget-boolean v5, v5, Lcom/google/android/gms/common/api/internal/zap;->zaa:Z

    if-nez v5, :cond_0

    .line 15
    :goto_0
    return-void

    .line 4294967295
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zao;->zab:Lcom/google/android/gms/common/api/internal/zam;

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zam;->zab()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v5

    move-object v1, v5

    move-object v5, v1

    .line 1
    invoke-virtual {v5}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zao;->zaa:Lcom/google/android/gms/common/api/internal/zap;

    .line 2
    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zap;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zao;->zaa:Lcom/google/android/gms/common/api/internal/zap;

    .line 3
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/zap;->getActivity()Landroid/app/Activity;

    move-result-object v6

    move-object v7, v1

    .line 4
    invoke-virtual {v7}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zao;->zab:Lcom/google/android/gms/common/api/internal/zam;

    invoke-virtual {v8}, Lcom/google/android/gms/common/api/internal/zam;->zaa()I

    move-result v8

    const/4 v9, 0x0

    .line 5
    invoke-static {v6, v7, v8, v9}, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v6

    const/4 v7, 0x1

    .line 2
    invoke-interface {v5, v6, v7}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zao;->zaa:Lcom/google/android/gms/common/api/internal/zap;

    move-object v2, v5

    move-object v5, v2

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zap;->zac:Lcom/google/android/gms/common/GoogleApiAvailability;

    move-object v6, v2

    .line 6
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/zap;->getActivity()Landroid/app/Activity;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v7

    const/4 v8, 0x0

    .line 7
    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zao;->zaa:Lcom/google/android/gms/common/api/internal/zap;

    move-object v2, v5

    move-object v5, v2

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zap;->zac:Lcom/google/android/gms/common/GoogleApiAvailability;

    move-object v6, v2

    .line 8
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/zap;->getActivity()Landroid/app/Activity;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zao;->zaa:Lcom/google/android/gms/common/api/internal/zap;

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zap;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    move-object v8, v1

    .line 9
    invoke-virtual {v8}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v8

    const/4 v9, 0x2

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/gms/common/api/internal/zao;->zaa:Lcom/google/android/gms/common/api/internal/zap;

    .line 10
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/LifecycleFragment;IILandroid/content/DialogInterface$OnCancelListener;)Z

    move-result v5

    goto :goto_0

    :cond_2
    move-object v5, v1

    .line 11
    invoke-virtual {v5}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v5

    const/16 v6, 0x12

    if-ne v5, v6, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zao;->zaa:Lcom/google/android/gms/common/api/internal/zap;

    move-object v1, v5

    move-object v5, v1

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zap;->zac:Lcom/google/android/gms/common/GoogleApiAvailability;

    move-object v2, v5

    move-object v5, v1

    .line 12
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zap;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object v1, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zao;->zaa:Lcom/google/android/gms/common/api/internal/zap;

    move-object v3, v5

    move-object v5, v2

    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/common/GoogleApiAvailability;->zad(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v5

    move-object v1, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zao;->zaa:Lcom/google/android/gms/common/api/internal/zap;

    move-object v2, v5

    move-object v5, v2

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zap;->zac:Lcom/google/android/gms/common/GoogleApiAvailability;

    move-object v3, v5

    move-object v5, v2

    .line 13
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zap;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object v2, v5

    new-instance v5, Lcom/google/android/gms/common/api/internal/zan;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/common/api/internal/zan;-><init>(Lcom/google/android/gms/common/api/internal/zao;Landroid/app/Dialog;)V

    move-object v5, v3

    move-object v6, v2

    move-object v7, v4

    .line 14
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/common/GoogleApiAvailability;->zae(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zabq;)Lcom/google/android/gms/common/api/internal/zabr;

    move-result-object v5

    goto/16 :goto_0

    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zao;->zaa:Lcom/google/android/gms/common/api/internal/zap;

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zao;->zab:Lcom/google/android/gms/common/api/internal/zam;

    invoke-virtual {v7}, Lcom/google/android/gms/common/api/internal/zam;->zaa()I

    move-result v7

    .line 15
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/common/api/internal/zap;->zah(Lcom/google/android/gms/common/api/internal/zap;Lcom/google/android/gms/common/ConnectionResult;I)V

    goto/16 :goto_0
.end method
