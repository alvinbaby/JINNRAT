.class public Lcom/google/android/gms/common/ErrorDialogFragment;
.super Landroid/app/DialogFragment;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field private zaa:Landroid/app/Dialog;

.field private zab:Landroid/content/DialogInterface$OnCancelListener;

.field private zac:Landroid/app/Dialog;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-direct {v1}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/app/Dialog;)Lcom/google/android/gms/common/ErrorDialogFragment;
    .locals 3
    .param p0    # Landroid/app/Dialog;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    .line 1
    invoke-static {v1, v2}, Lcom/google/android/gms/common/ErrorDialogFragment;->newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/ErrorDialogFragment;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/ErrorDialogFragment;
    .locals 5
    .param p0    # Landroid/app/Dialog;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Lcom/google/android/gms/common/ErrorDialogFragment;

    move-object v2, v3

    move-object v3, v2

    .line 2
    invoke-direct {v3}, Lcom/google/android/gms/common/ErrorDialogFragment;-><init>()V

    move-object v3, v0

    const-string v4, "Cannot display null dialog"

    .line 3
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Dialog;

    move-object v0, v3

    move-object v3, v0

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move-object v3, v0

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object v3, v2

    move-object v4, v0

    iput-object v4, v3, Lcom/google/android/gms/common/ErrorDialogFragment;->zaa:Landroid/app/Dialog;

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/ErrorDialogFragment;->zab:Landroid/content/DialogInterface$OnCancelListener;

    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/ErrorDialogFragment;->zab:Landroid/content/DialogInterface$OnCancelListener;

    move-object v0, v2

    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    .line 1
    invoke-interface {v2, v3}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/ErrorDialogFragment;->zaa:Landroid/app/Dialog;

    move-object v1, v2

    move-object v2, v1

    if-nez v2, :cond_1

    move-object v2, v0

    const/4 v3, 0x0

    .line 1
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/ErrorDialogFragment;->setShowsDialog(Z)V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/ErrorDialogFragment;->zac:Landroid/app/Dialog;

    if-nez v2, :cond_0

    .line 2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/gms/common/ErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/common/ErrorDialogFragment;->zac:Landroid/app/Dialog;

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/ErrorDialogFragment;->zac:Landroid/app/Dialog;

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 6
    .param p1    # Landroid/app/FragmentManager;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    .line 1
    invoke-super {v3, v4, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
