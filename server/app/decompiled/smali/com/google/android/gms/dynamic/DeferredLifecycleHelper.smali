.class public abstract Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/dynamic/LifecycleDelegate;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private zaa:Lcom/google/android/gms/dynamic/LifecycleDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private zab:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zac:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/dynamic/zah;",
            ">;"
        }
    .end annotation
.end field

.field private final zad:Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/dynamic/OnDelegateCreatedListener",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v2, Lcom/google/android/gms/dynamic/zaa;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/google/android/gms/dynamic/zaa;-><init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zad:Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;

    return-void
.end method

.method public static showGooglePlayUnavailableMessage(Landroid/widget/FrameLayout;)V
    .locals 12
    .param p0    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    .line 1
    move-object v0, p0

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v8

    move-object v1, v8

    move-object v8, v0

    .line 2
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object v2, v8

    move-object v8, v1

    move-object v9, v2

    .line 3
    invoke-virtual {v8, v9}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v8

    move v3, v8

    move-object v8, v2

    move v9, v3

    .line 4
    invoke-static {v8, v9}, Lcom/google/android/gms/common/internal/zac;->zac(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    move-object v8, v2

    move v9, v3

    .line 5
    invoke-static {v8, v9}, Lcom/google/android/gms/common/internal/zac;->zae(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    new-instance v8, Landroid/widget/LinearLayout;

    move-object v6, v8

    move-object v8, v6

    move-object v9, v0

    .line 6
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v8, v6

    const/4 v9, 0x1

    .line 7
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    move-object v7, v8

    move-object v8, v7

    const/4 v9, -0x2

    const/4 v10, -0x2

    .line 8
    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v8, v6

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v8, v0

    move-object v9, v6

    .line 9
    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/TextView;

    move-object v7, v8

    move-object v8, v7

    move-object v9, v0

    .line 10
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    move-object v0, v8

    move-object v8, v0

    const/4 v9, -0x2

    const/4 v10, -0x2

    .line 11
    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v8, v7

    move-object v9, v0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v8, v7

    move-object v9, v4

    .line 12
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v8, v6

    move-object v9, v7

    .line 13
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    const/4 v11, 0x0

    .line 14
    invoke-virtual {v8, v9, v10, v11}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    move-object v0, v8

    move-object v8, v0

    if-eqz v8, :cond_0

    new-instance v8, Landroid/widget/Button;

    move-object v1, v8

    move-object v8, v1

    move-object v9, v2

    .line 15
    invoke-direct {v8, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object v8, v1

    const v9, 0x1020019

    .line 16
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setId(I)V

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    move-object v3, v8

    move-object v8, v3

    const/4 v9, -0x2

    const/4 v10, -0x2

    .line 17
    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v8, v1

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v8, v1

    move-object v9, v5

    .line 18
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object v8, v6

    move-object v9, v1

    .line 19
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v8, Lcom/google/android/gms/dynamic/zae;

    move-object v3, v8

    move-object v8, v3

    move-object v9, v2

    move-object v10, v0

    .line 20
    invoke-direct {v8, v9, v10}, Lcom/google/android/gms/dynamic/zae;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    move-object v8, v1

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method static synthetic zaa(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;Lcom/google/android/gms/dynamic/LifecycleDelegate;)Lcom/google/android/gms/dynamic/LifecycleDelegate;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zaa:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method static synthetic zab(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)Ljava/util/LinkedList;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zac:Ljava/util/LinkedList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zac(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)Lcom/google/android/gms/dynamic/LifecycleDelegate;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zaa:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zad(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zab:Landroid/os/Bundle;

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method private final zae(I)V
    .locals 4

    .prologue
    move-object v0, p0

    move v1, p1

    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zac:Ljava/util/LinkedList;

    .line 1
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zac:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/dynamic/zah;

    invoke-interface {v2}, Lcom/google/android/gms/dynamic/zah;->zaa()I

    move-result v2

    move v3, v1

    if-lt v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zac:Ljava/util/LinkedList;

    .line 2
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zaf(Landroid/os/Bundle;Lcom/google/android/gms/dynamic/zah;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zaa:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v2

    move-object v5, v3

    .line 1
    invoke-interface {v4, v5}, Lcom/google/android/gms/dynamic/zah;->zab(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V

    .line 6
    :goto_0
    return-void

    .line 1
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zac:Ljava/util/LinkedList;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/LinkedList;

    move-object v3, v4

    move-object v4, v3

    .line 2
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zac:Ljava/util/LinkedList;

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zac:Ljava/util/LinkedList;

    move-object v5, v2

    .line 3
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v4

    move-object v4, v1

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zab:Landroid/os/Bundle;

    move-object v2, v4

    move-object v4, v2

    if-nez v4, :cond_3

    move-object v4, v0

    move-object v5, v1

    .line 4
    invoke-virtual {v5}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    iput-object v5, v4, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zab:Landroid/os/Bundle;

    :cond_2
    :goto_1
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zad:Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;

    .line 6
    invoke-virtual {v4, v5}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->createDelegate(Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;)V

    goto :goto_0

    :cond_3
    move-object v4, v2

    move-object v5, v1

    .line 5
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_1
.end method


# virtual methods
.method protected abstract createDelegate(Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;)V
    .param p1    # Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/OnDelegateCreatedListener",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public getDelegate()Lcom/google/android/gms/dynamic/LifecycleDelegate;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zaa:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-object v0, v1

    return-object v0
.end method

.method protected handleGooglePlayUnavailable(Landroid/widget/FrameLayout;)V
    .locals 3
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->showGooglePlayUnavailableMessage(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Lcom/google/android/gms/dynamic/zac;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    .line 1
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/dynamic/zac;-><init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;Landroid/os/Bundle;)V

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zaf(Landroid/os/Bundle;Lcom/google/android/gms/dynamic/zah;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v6, Landroid/widget/FrameLayout;

    move-object v4, v6

    move-object v6, v4

    move-object v7, v1

    .line 1
    invoke-virtual {v7}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/google/android/gms/dynamic/zad;

    move-object v5, v6

    move-object v6, v5

    move-object v7, v0

    move-object v8, v4

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    .line 2
    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/dynamic/zad;-><init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;Landroid/widget/FrameLayout;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    move-object v6, v0

    move-object v7, v3

    move-object v8, v5

    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zaf(Landroid/os/Bundle;Lcom/google/android/gms/dynamic/zah;)V

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zaa:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    if-nez v6, :cond_0

    move-object v6, v0

    move-object v7, v4

    .line 3
    invoke-virtual {v6, v7}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->handleGooglePlayUnavailable(Landroid/widget/FrameLayout;)V

    :cond_0
    move-object v6, v4

    move-object v0, v6

    return-object v0
.end method

.method public onDestroy()V
    .locals 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zaa:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 1
    invoke-interface {v2}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onDestroy()V

    .line 2
    :goto_0
    return-void

    .line 1
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    .line 2
    invoke-direct {v2, v3}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zae(I)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zaa:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 1
    invoke-interface {v2}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onDestroyView()V

    .line 2
    :goto_0
    return-void

    .line 1
    :cond_0
    move-object v2, v0

    const/4 v3, 0x2

    .line 2
    invoke-direct {v2, v3}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zae(I)V

    goto :goto_0
.end method

.method public onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v5, Lcom/google/android/gms/dynamic/zab;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    .line 1
    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/dynamic/zab;-><init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    move-object v5, v0

    move-object v6, v3

    move-object v7, v4

    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zaf(Landroid/os/Bundle;Lcom/google/android/gms/dynamic/zah;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zaa:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-object v0, v1

    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1
    invoke-interface {v1}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onLowMemory()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public onPause()V
    .locals 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zaa:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 1
    invoke-interface {v2}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onPause()V

    .line 2
    :goto_0
    return-void

    .line 1
    :cond_0
    move-object v2, v0

    const/4 v3, 0x5

    .line 2
    invoke-direct {v2, v3}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zae(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    new-instance v2, Lcom/google/android/gms/dynamic/zag;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    .line 1
    invoke-direct {v2, v3}, Lcom/google/android/gms/dynamic/zag;-><init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)V

    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zaf(Landroid/os/Bundle;Lcom/google/android/gms/dynamic/zah;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zaa:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v1

    .line 1
    invoke-interface {v3, v4}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    :goto_0
    return-void

    .line 1
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zab:Landroid/os/Bundle;

    move-object v0, v3

    move-object v3, v0

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    .line 2
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    goto :goto_0
.end method

.method public onStart()V
    .locals 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    new-instance v2, Lcom/google/android/gms/dynamic/zaf;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    .line 1
    invoke-direct {v2, v3}, Lcom/google/android/gms/dynamic/zaf;-><init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)V

    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zaf(Landroid/os/Bundle;Lcom/google/android/gms/dynamic/zah;)V

    return-void
.end method

.method public onStop()V
    .locals 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zaa:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 1
    invoke-interface {v2}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onStop()V

    .line 2
    :goto_0
    return-void

    .line 1
    :cond_0
    move-object v2, v0

    const/4 v3, 0x4

    .line 2
    invoke-direct {v2, v3}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zae(I)V

    goto :goto_0
.end method
