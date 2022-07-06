.class public Landroidx/fragment/app/DialogFragment;
.super Landroidx/fragment/app/Fragment;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final SAVED_BACK_STACK_ID:Ljava/lang/String; = "android:backStackId"

.field private static final SAVED_CANCELABLE:Ljava/lang/String; = "android:cancelable"

.field private static final SAVED_DIALOG_STATE_TAG:Ljava/lang/String; = "android:savedDialogState"

.field private static final SAVED_SHOWS_DIALOG:Ljava/lang/String; = "android:showsDialog"

.field private static final SAVED_STYLE:Ljava/lang/String; = "android:style"

.field private static final SAVED_THEME:Ljava/lang/String; = "android:theme"

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_NO_FRAME:I = 0x2

.field public static final STYLE_NO_INPUT:I = 0x3

.field public static final STYLE_NO_TITLE:I = 0x1


# instance fields
.field mBackStackId:I

.field mCancelable:Z

.field mDialog:Landroid/app/Dialog;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mDismissRunnable:Ljava/lang/Runnable;

.field mDismissed:Z

.field private mHandler:Landroid/os/Handler;

.field mShownByMe:Z

.field mShowsDialog:Z

.field mStyle:I

.field mTheme:I

.field mViewDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 93
    move-object v1, v0

    new-instance v2, Landroidx/fragment/app/DialogFragment$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/fragment/app/DialogFragment$1;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v2, v1, Landroidx/fragment/app/DialogFragment;->mDismissRunnable:Ljava/lang/Runnable;

    .line 101
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/fragment/app/DialogFragment;->mStyle:I

    .line 102
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/fragment/app/DialogFragment;->mTheme:I

    .line 103
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    .line 104
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    .line 105
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    .line 113
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 203
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 4

    .prologue
    .line 212
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 213
    return-void
.end method

.method dismissInternal(ZZ)V
    .locals 7

    .prologue
    .line 216
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    if-eqz v4, :cond_0

    .line 253
    :goto_0
    return-void

    .line 219
    :cond_0
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    .line 220
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    .line 221
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_1

    .line 225
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 226
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 227
    move v4, v2

    if-nez v4, :cond_1

    .line 232
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/DialogFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 233
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v5}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 239
    :cond_1
    :goto_1
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    .line 240
    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    if-ltz v4, :cond_3

    .line 241
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/fragment/app/DialogFragment;->requireFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroidx/fragment/app/FragmentManager;->popBackStack(II)V

    .line 243
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    .line 253
    :goto_2
    goto :goto_0

    .line 235
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/DialogFragment;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/DialogFragment;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v4

    goto :goto_1

    .line 245
    :cond_3
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/fragment/app/DialogFragment;->requireFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    move-object v3, v4

    .line 246
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 247
    move v4, v1

    if-eqz v4, :cond_4

    .line 248
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-result v4

    goto :goto_2

    .line 250
    :cond_4
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    move-result v4

    goto :goto_2
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v0, v1

    return-object v0
.end method

.method public getShowsDialog()Z
    .locals 2

    .prologue
    .line 332
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    move v0, v1

    return v0
.end method

.method public getTheme()I
    .locals 2
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/fragment/app/DialogFragment;->mTheme:I

    move v0, v1

    return v0
.end method

.method public isCancelable()Z
    .locals 2

    .prologue
    .line 304
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    move v0, v1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 451
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 453
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    if-nez v5, :cond_0

    .line 478
    :goto_0
    return-void

    .line 457
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/fragment/app/DialogFragment;->getView()Landroid/view/View;

    move-result-object v5

    move-object v2, v5

    .line 458
    move-object v5, v2

    if-eqz v5, :cond_2

    .line 459
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 460
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "DialogFragment can not be attached to a container view"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 463
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 465
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/fragment/app/DialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    move-object v3, v5

    .line 466
    move-object v5, v3

    if-eqz v5, :cond_3

    .line 467
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 469
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 470
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 471
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 472
    move-object v5, v1

    if-eqz v5, :cond_4

    .line 473
    move-object v5, v1

    const-string v6, "android:savedDialogState"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    move-object v4, v5

    .line 474
    move-object v5, v4

    if-eqz v5, :cond_4

    .line 475
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 478
    :cond_4
    goto :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 337
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 338
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    if-nez v2, :cond_0

    .line 341
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    .line 343
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 436
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 358
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 360
    move-object v2, v0

    new-instance v3, Landroid/os/Handler;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v3, v2, Landroidx/fragment/app/DialogFragment;->mHandler:Landroid/os/Handler;

    .line 362
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/fragment/app/DialogFragment;->mContainerId:I

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    .line 364
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 365
    move-object v2, v0

    move-object v3, v1

    const-string v4, "android:style"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/DialogFragment;->mStyle:I

    .line 366
    move-object v2, v0

    move-object v3, v1

    const-string v4, "android:theme"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/DialogFragment;->mTheme:I

    .line 367
    move-object v2, v0

    move-object v3, v1

    const-string v4, "android:cancelable"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    .line 368
    move-object v2, v0

    move-object v3, v1

    const-string v4, "android:showsDialog"

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    .line 369
    move-object v2, v0

    move-object v3, v1

    const-string v4, "android:backStackId"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    .line 371
    :cond_0
    return-void

    .line 362
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 431
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/app/Dialog;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/fragment/app/DialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/fragment/app/DialogFragment;->getTheme()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move-object v0, v2

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 529
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 530
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 534
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    .line 538
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 539
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 540
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    if-nez v1, :cond_0

    .line 543
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 545
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 547
    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 347
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 348
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    if-nez v1, :cond_0

    .line 352
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    .line 354
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 440
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    if-nez v2, :cond_0

    .line 445
    move-object v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 447
    :cond_0
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 376
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    if-nez v2, :cond_0

    .line 377
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/fragment/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    move-object v0, v2

    .line 388
    :goto_0
    return-object v0

    .line 380
    :cond_0
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 382
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    .line 383
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/DialogFragment;->mStyle:I

    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/DialogFragment;->setupDialog(Landroid/app/Dialog;I)V

    .line 385
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    move-object v0, v2

    goto :goto_0

    .line 388
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/DialogFragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    move-object v0, v2

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 492
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 493
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_0

    .line 494
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    move-object v2, v3

    .line 495
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 496
    move-object v3, v1

    const-string v4, "android:savedDialogState"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 499
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroidx/fragment/app/DialogFragment;->mStyle:I

    if-eqz v3, :cond_1

    .line 500
    move-object v3, v1

    const-string v4, "android:style"

    move-object v5, v0

    iget v5, v5, Landroidx/fragment/app/DialogFragment;->mStyle:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 502
    :cond_1
    move-object v3, v0

    iget v3, v3, Landroidx/fragment/app/DialogFragment;->mTheme:I

    if-eqz v3, :cond_2

    .line 503
    move-object v3, v1

    const-string v4, "android:theme"

    move-object v5, v0

    iget v5, v5, Landroidx/fragment/app/DialogFragment;->mTheme:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 505
    :cond_2
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    if-nez v3, :cond_3

    .line 506
    move-object v3, v1

    const-string v4, "android:cancelable"

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 508
    :cond_3
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    if-nez v3, :cond_4

    .line 509
    move-object v3, v1

    const-string v4, "android:showsDialog"

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 511
    :cond_4
    move-object v3, v0

    iget v3, v3, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 512
    move-object v3, v1

    const-string v4, "android:backStackId"

    move-object v5, v0

    iget v5, v5, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 514
    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 482
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 484
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 485
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    .line 486
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 488
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 518
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 519
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 520
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    .line 522
    :cond_0
    return-void
.end method

.method public final requireDialog()Landroid/app/Dialog;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 274
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    move-object v1, v2

    .line 275
    move-object v2, v1

    if-nez v2, :cond_0

    .line 276
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DialogFragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not have a Dialog."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public setCancelable(Z)V
    .locals 4

    .prologue
    .line 296
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    .line 297
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 298
    :cond_0
    return-void
.end method

.method public setShowsDialog(Z)V
    .locals 4

    .prologue
    .line 325
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    .line 326
    return-void
.end method

.method public setStyle(II)V
    .locals 5
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 130
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/fragment/app/DialogFragment;->mStyle:I

    .line 131
    move-object v3, v0

    iget v3, v3, Landroidx/fragment/app/DialogFragment;->mStyle:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Landroidx/fragment/app/DialogFragment;->mStyle:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 132
    :cond_0
    move-object v3, v0

    const v4, 0x1030059

    iput v4, v3, Landroidx/fragment/app/DialogFragment;->mTheme:I

    .line 134
    :cond_1
    move v3, v2

    if-eqz v3, :cond_2

    .line 135
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/fragment/app/DialogFragment;->mTheme:I

    .line 137
    :cond_2
    return-void
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .locals 5
    .param p1    # Landroid/app/Dialog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 395
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 405
    :goto_0
    return-void

    .line 397
    :pswitch_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 403
    :pswitch_1
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    move-result v3

    goto :goto_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 6
    .param p1    # Landroidx/fragment/app/FragmentTransaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    .line 169
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    .line 170
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    .line 171
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    .line 172
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    move-result v4

    iput v4, v3, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    .line 173
    move-object v3, v0

    iget v3, v3, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    move v0, v3

    return v0
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 7
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 151
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    .line 152
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    .line 153
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    move-object v3, v4

    .line 154
    move-object v4, v3

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 155
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    move-result v4

    .line 156
    return-void
.end method

.method public showNow(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 7
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 188
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    .line 189
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    .line 190
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    move-object v3, v4

    .line 191
    move-object v4, v3

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 192
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 193
    return-void
.end method
