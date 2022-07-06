.class public Lcom/google/android/gms/common/api/GoogleApiActivity;
.super Landroid/app/Activity;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# instance fields
.field protected zaa:I
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-direct {v1}, Landroid/app/Activity;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    return-void
.end method

.method public static zaa(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    new-instance v5, Landroid/content/Intent;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v0

    const-class v7, Lcom/google/android/gms/common/api/GoogleApiActivity;

    .line 1
    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v5, v4

    const-string v6, "pending_intent"

    move-object v7, v1

    .line 2
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v5

    move-object v5, v4

    const-string v6, "failing_client_id"

    move v7, v2

    .line 3
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    move-object v5, v4

    const-string v6, "notify_manager"

    move v7, v3

    .line 4
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    move-object v5, v4

    move-object v0, v5

    return-object v0
.end method

.method private final zab()V
    .locals 12

    .prologue
    move-object v0, p0

    move-object v5, v0

    .line 1
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/GoogleApiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    move-object v1, v5

    move-object v5, v1

    if-nez v5, :cond_0

    const-string v5, "GoogleApiActivity"

    const-string v6, "Activity started without extras"

    .line 2
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object v5, v0

    .line 3
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    .line 23
    :goto_0
    return-void

    .line 3
    :cond_0
    move-object v5, v1

    const-string v6, "pending_intent"

    .line 4
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    move-object v2, v5

    move-object v5, v1

    const-string v6, "error_code"

    .line 5
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    move-object v3, v5

    move-object v5, v2

    if-nez v5, :cond_1

    move-object v5, v3

    if-eqz v5, :cond_3

    :cond_1
    move-object v5, v2

    if-eqz v5, :cond_2

    move-object v5, v0

    move-object v6, v2

    .line 6
    :try_start_0
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 7
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/common/api/GoogleApiActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_2
    move-object v5, v3

    .line 19
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    move-object v5, v1

    check-cast v5, Ljava/lang/Integer;

    move-object v1, v5

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v1, v5

    .line 20
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v5

    move-object v6, v0

    move v7, v1

    const/4 v8, 0x2

    move-object v9, v0

    .line 21
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/gms/common/GoogleApiAvailability;->showErrorDialogFragment(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z

    move-result v5

    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    goto :goto_0

    :cond_3
    const-string v5, "GoogleApiActivity"

    const-string v6, "Activity started without resolution"

    .line 22
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object v5, v0

    .line 23
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v3, v5

    move-object v5, v1

    const-string v6, "notify_manager"

    const/4 v7, 0x1

    .line 10
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v0

    .line 15
    invoke-static {v5}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-result-object v5

    move-object v1, v5

    new-instance v5, Lcom/google/android/gms/common/ConnectionResult;

    move-object v2, v5

    move-object v5, v2

    const/16 v6, 0x16

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    .line 16
    invoke-virtual {v7}, Lcom/google/android/gms/common/api/GoogleApiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "failing_client_id"

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 17
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq(Lcom/google/android/gms/common/ConnectionResult;I)V

    :goto_1
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    move-object v5, v0

    .line 18
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    goto/16 :goto_0

    :catch_1
    move-exception v5

    move-object v1, v5

    const-string v5, "GoogleApiActivity"

    const-string v6, "Failed to launch pendingIntent"

    move-object v7, v1

    .line 8
    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    move-object v5, v0

    .line 9
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    goto/16 :goto_0

    :cond_4
    move-object v5, v2

    .line 11
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v4, v5

    move-object v5, v4

    move v6, v2

    const/16 v7, 0x24

    add-int/lit8 v6, v6, 0x24

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v4

    const-string v6, "Activity not found while launching "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v4

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v6, "generic"

    .line 12
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v1

    .line 13
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, " This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store."

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    :cond_5
    const-string v5, "GoogleApiActivity"

    move-object v6, v1

    move-object v7, v3

    .line 14
    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    goto :goto_1
.end method


# virtual methods
.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    .line 1
    invoke-super {v4, v5, v6, v7}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    move v4, v1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    move-object v4, v0

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    move-object v1, v4

    move-object v4, v1

    const-string v5, "notify_manager"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    move v1, v4

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    move-object v4, v0

    move v5, v2

    move-object v6, v3

    .line 3
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/common/api/GoogleApiActivity;->setResult(ILandroid/content/Intent;)V

    move v4, v1

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 4
    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-result-object v4

    move-object v1, v4

    move v4, v2

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    move-object v4, v0

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    return-void

    .line 5
    :pswitch_0
    new-instance v4, Lcom/google/android/gms/common/ConnectionResult;

    move-object v2, v4

    move-object v4, v2

    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    .line 6
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/GoogleApiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "failing_client_id"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 5
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq(Lcom/google/android/gms/common/ConnectionResult;I)V

    goto :goto_0

    :pswitch_1
    move-object v4, v1

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zai()V

    goto :goto_0

    :cond_1
    move v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    move-object v4, v0

    move v5, v2

    move-object v6, v3

    .line 8
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/common/api/GoogleApiActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 4
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    move-object v2, v0

    const/4 v3, 0x0

    .line 1
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiActivity;->setResult(I)V

    move-object v2, v0

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    .line 1
    invoke-super {v2, v3}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    const-string v4, "resolution"

    .line 2
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    :cond_0
    move-object v2, v0

    iget v2, v2, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    move-object v2, v0

    .line 3
    invoke-direct {v2}, Lcom/google/android/gms/common/api/GoogleApiActivity;->zab()V

    :goto_0
    return-void

    :cond_1
    goto :goto_0
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "resolution"

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    .line 1
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v0

    move-object v3, v1

    .line 2
    invoke-super {v2, v3}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
