.class final Landroidx/fragment/app/FragmentManagerImpl;
.super Landroidx/fragment/app/FragmentManager;
.source "FragmentManagerImpl.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;,
        Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;,
        Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;,
        Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;,
        Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;,
        Landroidx/fragment/app/FragmentManagerImpl$FragmentTag;,
        Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    }
.end annotation


# static fields
.field static final ANIM_DUR:I = 0xdc

.field public static final ANIM_STYLE_CLOSE_ENTER:I = 0x3

.field public static final ANIM_STYLE_CLOSE_EXIT:I = 0x4

.field public static final ANIM_STYLE_FADE_ENTER:I = 0x5

.field public static final ANIM_STYLE_FADE_EXIT:I = 0x6

.field public static final ANIM_STYLE_OPEN_ENTER:I = 0x1

.field public static final ANIM_STYLE_OPEN_EXIT:I = 0x2

.field static DEBUG:Z = false

.field static final DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final DECELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final TAG:Ljava/lang/String; = "FragmentManager"

.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"


# instance fields
.field final mActive:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContainer:Landroidx/fragment/app/FragmentContainer;

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mHost:Landroidx/fragment/app/FragmentHostCallback;

.field private final mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;",
            ">;"
        }
    .end annotation
.end field

.field mNeedMenuInvalidate:Z

.field mNextFragmentIndex:I

.field private mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

.field private final mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

.field private mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

.field mParent:Landroidx/fragment/app/Fragment;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;",
            ">;"
        }
    .end annotation
.end field

.field mPostponedTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mPrimaryNav:Landroidx/fragment/app/Fragment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mStopped:Z

.field mTmpAddedFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mTmpIsPop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mTmpRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    .line 574
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 575
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/fragment/app/FragmentManager;-><init>()V

    .line 97
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mNextFragmentIndex:I

    .line 99
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 100
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    .line 104
    move-object v1, v0

    new-instance v2, Landroidx/fragment/app/FragmentManagerImpl$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/fragment/app/FragmentManagerImpl$1;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Z)V

    iput-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 117
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 120
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    .line 139
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 140
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 147
    move-object v1, v0

    new-instance v2, Landroidx/fragment/app/FragmentManagerImpl$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/fragment/app/FragmentManagerImpl$2;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    iput-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    return-void
.end method

.method private addAddedFragments(Landroidx/collection/ArraySet;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2091
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v7, 0x1

    if-ge v6, v7, :cond_0

    .line 2107
    :goto_0
    return-void

    .line 2095
    :cond_0
    move-object v6, v0

    iget v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v7, 0x3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v2, v6

    .line 2096
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 2097
    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 2098
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    move-object v5, v6

    .line 2099
    move-object v6, v5

    iget v6, v6, Landroidx/fragment/app/Fragment;->mState:I

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 2100
    move-object v6, v0

    move-object v7, v5

    move v8, v2

    move-object v9, v5

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v9

    move-object v10, v5

    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 2102
    move-object v6, v5

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v6, :cond_1

    move-object v6, v5

    iget-boolean v6, v6, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v6, :cond_1

    move-object v6, v5

    iget-boolean v6, v6, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v6, :cond_1

    .line 2103
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 2097
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2107
    :cond_2
    goto :goto_0
.end method

.method private animateRemoveFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;I)V
    .locals 15
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1076
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v7, v1

    iget-object v7, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v4, v7

    .line 1077
    move-object v7, v1

    iget-object v7, v7, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    move-object v5, v7

    .line 1078
    move-object v7, v5

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1079
    move-object v7, v1

    move v8, v3

    invoke-virtual {v7, v8}, Landroidx/fragment/app/Fragment;->setStateAfterAnimating(I)V

    .line 1080
    move-object v7, v2

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v7, :cond_0

    .line 1081
    new-instance v7, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v2

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    move-object v10, v5

    move-object v11, v4

    invoke-direct {v8, v9, v10, v11}, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    move-object v6, v7

    .line 1083
    move-object v7, v1

    move-object v8, v1

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1084
    move-object v7, v6

    new-instance v8, Landroidx/fragment/app/FragmentManagerImpl$3;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    move-object v11, v5

    move-object v12, v1

    invoke-direct {v9, v10, v11, v12}, Landroidx/fragment/app/FragmentManagerImpl$3;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1110
    move-object v7, v1

    iget-object v7, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1130
    :goto_0
    return-void

    .line 1112
    :cond_0
    move-object v7, v2

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    move-object v6, v7

    .line 1113
    move-object v7, v1

    move-object v8, v2

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v7, v8}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1114
    move-object v7, v6

    new-instance v8, Landroidx/fragment/app/FragmentManagerImpl$4;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    move-object v11, v5

    move-object v12, v4

    move-object v13, v1

    invoke-direct {v9, v10, v11, v12, v13}, Landroidx/fragment/app/FragmentManagerImpl$4;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1127
    move-object v7, v6

    move-object v8, v1

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1128
    move-object v7, v6

    invoke-virtual {v7}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method private burpActive()V
    .locals 4

    .prologue
    .line 2555
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    move-object v1, v2

    .line 2558
    move-object v2, v1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    .line 2559
    return-void
.end method

.method private checkStateLoss()V
    .locals 5

    .prologue
    .line 1535
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1536
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1539
    :cond_0
    return-void
.end method

.method private cleanupExec()V
    .locals 3

    .prologue
    .line 1712
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1713
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1714
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1715
    return-void
.end method

.method private dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V
    .locals 4
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2807
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 2808
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->performPrimaryNavigationFragmentChanged()V

    .line 2810
    :cond_0
    return-void
.end method

.method private dispatchStateChange(I)V
    .locals 6

    .prologue
    .line 2658
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, v3, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2659
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2661
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2663
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v3

    .line 2664
    return-void

    .line 2661
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2662
    move-object v3, v2

    throw v3
.end method

.method private endAnimatingAwayFragments()V
    .locals 12

    .prologue
    .line 2125
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v6

    :goto_0
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    move-object v2, v6

    .line 2126
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 2127
    move-object v6, v2

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 2129
    move-object v6, v2

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v6

    move v3, v6

    .line 2130
    move-object v6, v2

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 2131
    move-object v6, v4

    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v6

    move-object v5, v6

    .line 2132
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 2133
    move-object v6, v5

    invoke-virtual {v6}, Landroid/view/animation/Animation;->cancel()V

    .line 2136
    move-object v6, v4

    invoke-virtual {v6}, Landroid/view/View;->clearAnimation()V

    .line 2138
    :cond_0
    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 2139
    move-object v6, v0

    move-object v7, v2

    move v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 2144
    :cond_1
    :goto_1
    goto :goto_0

    .line 2140
    :cond_2
    move-object v6, v2

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2141
    move-object v6, v2

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/Animator;->end()V

    goto :goto_1

    .line 2145
    :cond_3
    return-void
.end method

.method private ensureExecReady(Z)V
    .locals 7

    .prologue
    .line 1659
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v3, :cond_0

    .line 1660
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "FragmentManager is already executing transactions"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1663
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v3, :cond_1

    .line 1664
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Fragment host has been destroyed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1667
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 1668
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Must be called from main thread of fragment host"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1671
    :cond_2
    move v3, v1

    if-nez v3, :cond_3

    .line 1672
    move-object v3, v0

    invoke-direct {v3}, Landroidx/fragment/app/FragmentManagerImpl;->checkStateLoss()V

    .line 1675
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    if-nez v3, :cond_4

    .line 1676
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    .line 1677
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    .line 1679
    :cond_4
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1681
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-direct {v3, v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1683
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1685
    return-void

    .line 1683
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1684
    move-object v3, v2

    throw v3
.end method

.method private static executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2068
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v8, v2

    move v4, v8

    :goto_0
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_2

    .line 2069
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/BackStackRecord;

    move-object v5, v8

    .line 2070
    move-object v8, v1

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move v6, v8

    .line 2071
    move v8, v6

    if-eqz v8, :cond_1

    .line 2072
    move-object v8, v5

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroidx/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2075
    move v8, v4

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    :goto_1
    move v7, v8

    .line 2076
    move-object v8, v5

    move v9, v7

    invoke-virtual {v8, v9}, Landroidx/fragment/app/BackStackRecord;->executePopOps(Z)V

    .line 2068
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2075
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 2078
    :cond_1
    move-object v8, v5

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroidx/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2079
    move-object v8, v5

    invoke-virtual {v8}, Landroidx/fragment/app/BackStackRecord;->executeOps()V

    goto :goto_2

    .line 2082
    :cond_2
    return-void
.end method

.method private executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1844
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v12, v1

    move v13, v3

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/BackStackRecord;

    iget-boolean v12, v12, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    move v5, v12

    .line 1845
    const/4 v12, 0x0

    move v6, v12

    .line 1846
    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    if-nez v12, :cond_1

    .line 1847
    move-object v12, v0

    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v12, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    .line 1851
    :goto_0
    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    move-object v13, v0

    iget-object v13, v13, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v12

    .line 1852
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentManagerImpl;->getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;

    move-result-object v12

    move-object v7, v12

    .line 1853
    move v12, v3

    move v8, v12

    :goto_1
    move v12, v8

    move v13, v4

    if-ge v12, v13, :cond_4

    .line 1854
    move-object v12, v1

    move v13, v8

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/BackStackRecord;

    move-object v9, v12

    .line 1855
    move-object v12, v2

    move v13, v8

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move v10, v12

    .line 1856
    move v12, v10

    if-nez v12, :cond_2

    .line 1857
    move-object v12, v9

    move-object v13, v0

    iget-object v13, v13, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    move-object v14, v7

    invoke-virtual {v12, v13, v14}, Landroidx/fragment/app/BackStackRecord;->expandOps(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v12

    move-object v7, v12

    .line 1861
    :goto_2
    move v12, v6

    if-nez v12, :cond_0

    move-object v12, v9

    iget-boolean v12, v12, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v12, :cond_3

    :cond_0
    const/4 v12, 0x1

    :goto_3
    move v6, v12

    .line 1853
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1849
    :cond_1
    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1859
    :cond_2
    move-object v12, v9

    move-object v13, v0

    iget-object v13, v13, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    move-object v14, v7

    invoke-virtual {v12, v13, v14}, Landroidx/fragment/app/BackStackRecord;->trackAddedFragmentsInPop(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v12

    move-object v7, v12

    goto :goto_2

    .line 1861
    :cond_3
    const/4 v12, 0x0

    goto :goto_3

    .line 1863
    :cond_4
    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 1865
    move v12, v5

    if-nez v12, :cond_5

    .line 1866
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    move v15, v3

    move/from16 v16, v4

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Landroidx/fragment/app/FragmentTransition;->startTransitions(Landroidx/fragment/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 1869
    :cond_5
    move-object v12, v1

    move-object v13, v2

    move v14, v3

    move v15, v4

    invoke-static {v12, v13, v14, v15}, Landroidx/fragment/app/FragmentManagerImpl;->executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 1871
    move v12, v4

    move v8, v12

    .line 1872
    move v12, v5

    if-eqz v12, :cond_6

    .line 1873
    new-instance v12, Landroidx/collection/ArraySet;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Landroidx/collection/ArraySet;-><init>()V

    move-object v9, v12

    .line 1874
    move-object v12, v0

    move-object v13, v9

    invoke-direct {v12, v13}, Landroidx/fragment/app/FragmentManagerImpl;->addAddedFragments(Landroidx/collection/ArraySet;)V

    .line 1875
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    move v15, v3

    move/from16 v16, v4

    move-object/from16 v17, v9

    invoke-direct/range {v12 .. v17}, Landroidx/fragment/app/FragmentManagerImpl;->postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidx/collection/ArraySet;)I

    move-result v12

    move v8, v12

    .line 1877
    move-object v12, v0

    move-object v13, v9

    invoke-direct {v12, v13}, Landroidx/fragment/app/FragmentManagerImpl;->makeRemovedFragmentsInvisible(Landroidx/collection/ArraySet;)V

    .line 1880
    :cond_6
    move v12, v8

    move v13, v3

    if-eq v12, v13, :cond_7

    move v12, v5

    if-eqz v12, :cond_7

    .line 1882
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    move v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    invoke-static/range {v12 .. v17}, Landroidx/fragment/app/FragmentTransition;->startTransitions(Landroidx/fragment/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 1884
    move-object v12, v0

    move-object v13, v0

    iget v13, v13, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1887
    :cond_7
    move v12, v3

    move v9, v12

    :goto_4
    move v12, v9

    move v13, v4

    if-ge v12, v13, :cond_9

    .line 1888
    move-object v12, v1

    move v13, v9

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/BackStackRecord;

    move-object v10, v12

    .line 1889
    move-object v12, v2

    move v13, v9

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move v11, v12

    .line 1890
    move v12, v11

    if-eqz v12, :cond_8

    move-object v12, v10

    iget v12, v12, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ltz v12, :cond_8

    .line 1891
    move-object v12, v0

    move-object v13, v10

    iget v13, v13, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    invoke-virtual {v12, v13}, Landroidx/fragment/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    .line 1892
    move-object v12, v10

    const/4 v13, -0x1

    iput v13, v12, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 1894
    :cond_8
    move-object v12, v10

    invoke-virtual {v12}, Landroidx/fragment/app/BackStackRecord;->runOnCommitRunnables()V

    .line 1887
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1896
    :cond_9
    move v12, v6

    if-eqz v12, :cond_a

    .line 1897
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 1899
    :cond_a
    return-void
.end method

.method private executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1747
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v7, :cond_1

    const/4 v7, 0x0

    :goto_0
    move v3, v7

    .line 1748
    const/4 v7, 0x0

    move v4, v7

    :goto_1
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_5

    .line 1749
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;

    move-object v5, v7

    .line 1750
    move-object v7, v1

    if-eqz v7, :cond_2

    move-object v7, v5

    iget-boolean v7, v7, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    if-nez v7, :cond_2

    .line 1751
    move-object v7, v1

    move-object v8, v5

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    move v6, v7

    .line 1752
    move v7, v6

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    move-object v7, v2

    move v8, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1753
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 1754
    add-int/lit8 v4, v4, -0x1

    .line 1755
    add-int/lit8 v3, v3, -0x1

    .line 1756
    move-object v7, v5

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    .line 1748
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1747
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    goto :goto_0

    .line 1760
    :cond_2
    move-object v7, v5

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->isReady()Z

    move-result v7

    if-nez v7, :cond_3

    move-object v7, v1

    if-eqz v7, :cond_0

    move-object v7, v5

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    move-object v8, v1

    const/4 v9, 0x0

    move-object v10, v1

    .line 1761
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Landroidx/fragment/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1762
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 1763
    add-int/lit8 v4, v4, -0x1

    .line 1764
    add-int/lit8 v3, v3, -0x1

    .line 1766
    move-object v7, v1

    if-eqz v7, :cond_4

    move-object v7, v5

    iget-boolean v7, v7, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    if-nez v7, :cond_4

    move-object v7, v1

    move-object v8, v5

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    .line 1767
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    move v11, v7

    move v7, v11

    move v8, v11

    move v6, v8

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    move-object v7, v2

    move v8, v6

    .line 1768
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1770
    move-object v7, v5

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    goto :goto_2

    .line 1772
    :cond_4
    move-object v7, v5

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    goto :goto_2

    .line 1776
    :cond_5
    return-void
.end method

.method private findFragmentUnder(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 9

    .prologue
    .line 2040
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    iget-object v7, v7, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    move-object v2, v7

    .line 2041
    move-object v7, v1

    iget-object v7, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v3, v7

    .line 2043
    move-object v7, v2

    if-eqz v7, :cond_0

    move-object v7, v3

    if-nez v7, :cond_1

    .line 2044
    :cond_0
    const/4 v7, 0x0

    move-object v0, v7

    .line 2055
    :goto_0
    return-object v0

    .line 2047
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    move v4, v7

    .line 2048
    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    :goto_1
    move v7, v5

    if-ltz v7, :cond_3

    .line 2049
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/Fragment;

    move-object v6, v7

    .line 2050
    move-object v7, v6

    iget-object v7, v7, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    move-object v8, v2

    if-ne v7, v8, :cond_2

    move-object v7, v6

    iget-object v7, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v7, :cond_2

    .line 2052
    move-object v7, v6

    move-object v0, v7

    goto :goto_0

    .line 2048
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 2055
    :cond_3
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0
.end method

.method private forcePostponedTransactions()V
    .locals 3

    .prologue
    .line 2113
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 2114
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2115
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    goto :goto_0

    .line 2118
    :cond_0
    return-void
.end method

.method private generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2159
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v8, 0x0

    move v3, v8

    .line 2160
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v4, v9

    monitor-enter v8

    .line 2161
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 2162
    :cond_0
    const/4 v8, 0x0

    move-object v9, v4

    monitor-exit v9

    move v0, v8

    .line 2172
    :goto_0
    return v0

    .line 2165
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v5, v8

    .line 2166
    const/4 v8, 0x0

    move v6, v8

    :goto_1
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_2

    .line 2167
    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;

    move-object v10, v1

    move-object v11, v2

    invoke-interface {v9, v10, v11}, Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v9

    or-int/2addr v8, v9

    move v3, v8

    .line 2166
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2169
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2170
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v8}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2171
    move-object v8, v4

    monitor-exit v8

    .line 2172
    move v8, v3

    move v0, v8

    goto :goto_0

    .line 2171
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v4

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v7

    throw v8
.end method

.method private isMenuAvailable(Landroidx/fragment/app/Fragment;)Z
    .locals 3

    .prologue
    .line 3109
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v1

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManagerImpl;->checkForMenus()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static makeFadeAnimation(FF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    .locals 8

    .prologue
    .line 595
    move v0, p0

    move v1, p1

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v2, v3

    .line 596
    move-object v3, v2

    sget-object v4, Landroidx/fragment/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 597
    move-object v3, v2

    const-wide/16 v4, 0xdc

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 598
    new-instance v3, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-direct {v4, v5}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    move-object v0, v3

    return-object v0
.end method

.method static makeOpenCloseAnimation(FFFF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    .locals 18

    .prologue
    .line 581
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    new-instance v7, Landroid/view/animation/AnimationSet;

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v17

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v4, v7

    .line 582
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v17

    move v9, v0

    move v10, v1

    move v11, v0

    move v12, v1

    const/4 v13, 0x1

    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x1

    const/high16 v16, 0x3f000000    # 0.5f

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object v5, v7

    .line 584
    move-object v7, v5

    sget-object v8, Landroidx/fragment/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 585
    move-object v7, v5

    const-wide/16 v8, 0xdc

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 586
    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 587
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v17

    move v9, v2

    move v10, v3

    invoke-direct {v8, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v6, v7

    .line 588
    move-object v7, v6

    sget-object v8, Landroidx/fragment/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 589
    move-object v7, v6

    const-wide/16 v8, 0xdc

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 590
    move-object v7, v4

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 591
    new-instance v7, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v17

    move-object v9, v4

    invoke-direct {v8, v9}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    move-object v0, v7

    return-object v0
.end method

.method private makeRemovedFragmentsInvisible(Landroidx/collection/ArraySet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1909
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-virtual {v6}, Landroidx/collection/ArraySet;->size()I

    move-result v6

    move v2, v6

    .line 1910
    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 1911
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    move-object v4, v6

    .line 1912
    move-object v6, v4

    iget-boolean v6, v6, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v6, :cond_0

    .line 1913
    move-object v6, v4

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 1914
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    iput v7, v6, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 1915
    move-object v6, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 1910
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1918
    :cond_1
    return-void
.end method

.method private popBackStackImmediate(Ljava/lang/String;II)Z
    .locals 12

    .prologue
    .line 293
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v6

    .line 294
    move-object v6, v0

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 296
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_0

    move v6, v2

    if-gez v6, :cond_0

    move-object v6, v1

    if-nez v6, :cond_0

    .line 299
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    move-object v4, v6

    .line 300
    move-object v6, v4

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 302
    const/4 v6, 0x1

    move v0, v6

    .line 319
    :goto_0
    return v0

    .line 306
    :cond_0
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    move-object v9, v1

    move v10, v2

    move v11, v3

    invoke-virtual/range {v6 .. v11}, Landroidx/fragment/app/FragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v6

    move v4, v6

    .line 307
    move v6, v4

    if-eqz v6, :cond_1

    .line 308
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 310
    move-object v6, v0

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {v6, v7, v8}, Landroidx/fragment/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    move-object v6, v0

    invoke-direct {v6}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    .line 316
    :cond_1
    move-object v6, v0

    invoke-direct {v6}, Landroidx/fragment/app/FragmentManagerImpl;->updateOnBackPressedCallbackEnabled()V

    .line 317
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 318
    move-object v6, v0

    invoke-direct {v6}, Landroidx/fragment/app/FragmentManagerImpl;->burpActive()V

    .line 319
    move v6, v4

    move v0, v6

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    invoke-direct {v6}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    .line 313
    move-object v6, v5

    throw v6
.end method

.method private postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidx/collection/ArraySet;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Landroidx/collection/ArraySet",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1935
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move v12, v4

    move v6, v12

    .line 1936
    move v12, v4

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v7, v12

    :goto_0
    move v12, v7

    move v13, v3

    if-lt v12, v13, :cond_5

    .line 1937
    move-object v12, v1

    move v13, v7

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/BackStackRecord;

    move-object v8, v12

    .line 1938
    move-object v12, v2

    move v13, v7

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move v9, v12

    .line 1939
    move-object v12, v8

    invoke-virtual {v12}, Landroidx/fragment/app/BackStackRecord;->isPostponed()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object v12, v8

    move-object v13, v1

    move v14, v7

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move v15, v4

    .line 1940
    invoke-virtual {v12, v13, v14, v15}, Landroidx/fragment/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v12

    if-nez v12, :cond_3

    const/4 v12, 0x1

    :goto_1
    move v10, v12

    .line 1941
    move v12, v10

    if-eqz v12, :cond_2

    .line 1942
    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v12, :cond_0

    .line 1943
    move-object v12, v0

    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v12, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    .line 1945
    :cond_0
    new-instance v12, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v8

    move v15, v9

    invoke-direct {v13, v14, v15}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;-><init>(Landroidx/fragment/app/BackStackRecord;Z)V

    move-object v11, v12

    .line 1947
    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    move-object v13, v11

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 1948
    move-object v12, v8

    move-object v13, v11

    invoke-virtual {v12, v13}, Landroidx/fragment/app/BackStackRecord;->setOnStartPostponedListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V

    .line 1951
    move v12, v9

    if-eqz v12, :cond_4

    .line 1952
    move-object v12, v8

    invoke-virtual {v12}, Landroidx/fragment/app/BackStackRecord;->executeOps()V

    .line 1958
    :goto_2
    add-int/lit8 v6, v6, -0x1

    .line 1959
    move v12, v7

    move v13, v6

    if-eq v12, v13, :cond_1

    .line 1960
    move-object v12, v1

    move v13, v7

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    .line 1961
    move-object v12, v1

    move v13, v6

    move-object v14, v8

    invoke-virtual {v12, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1965
    :cond_1
    move-object v12, v0

    move-object v13, v5

    invoke-direct {v12, v13}, Landroidx/fragment/app/FragmentManagerImpl;->addAddedFragments(Landroidx/collection/ArraySet;)V

    .line 1936
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 1940
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 1954
    :cond_4
    move-object v12, v8

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroidx/fragment/app/BackStackRecord;->executePopOps(Z)V

    goto :goto_2

    .line 1968
    :cond_5
    move v12, v6

    move v0, v12

    return v0
.end method

.method private removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1794
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v8, v1

    if-eqz v8, :cond_0

    move-object v8, v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1832
    :cond_0
    :goto_0
    return-void

    .line 1798
    :cond_1
    move-object v8, v2

    if-eqz v8, :cond_2

    move-object v8, v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move-object v9, v2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v8, v9, :cond_3

    .line 1799
    :cond_2
    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string v10, "Internal error with the back stack records"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1803
    :cond_3
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroidx/fragment/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1805
    move-object v8, v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v3, v8

    .line 1806
    const/4 v8, 0x0

    move v4, v8

    .line 1807
    const/4 v8, 0x0

    move v5, v8

    :goto_1
    move v8, v5

    move v9, v3

    if-ge v8, v9, :cond_7

    .line 1808
    move-object v8, v1

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/BackStackRecord;

    iget-boolean v8, v8, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    move v6, v8

    .line 1809
    move v8, v6

    if-nez v8, :cond_6

    .line 1811
    move v8, v4

    move v9, v5

    if-eq v8, v9, :cond_4

    .line 1812
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v4

    move v12, v5

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 1816
    :cond_4
    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v7, v8

    .line 1817
    move-object v8, v2

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1818
    :goto_2
    move v8, v7

    move v9, v3

    if-ge v8, v9, :cond_5

    move-object v8, v2

    move v9, v7

    .line 1819
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v1

    move v9, v7

    .line 1820
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/BackStackRecord;

    iget-boolean v8, v8, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v8, :cond_5

    .line 1821
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1824
    :cond_5
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v5

    move v12, v7

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 1825
    move v8, v7

    move v4, v8

    .line 1826
    move v8, v7

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v5, v8

    .line 1807
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1829
    :cond_7
    move v8, v4

    move v9, v3

    if-eq v8, v9, :cond_8

    .line 1830
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v4

    move v12, v3

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 1832
    :cond_8
    goto/16 :goto_0
.end method

.method public static reverseTransit(I)I
    .locals 3

    .prologue
    .line 3113
    move v0, p0

    const/4 v2, 0x0

    move v1, v2

    .line 3114
    move v2, v0

    sparse-switch v2, :sswitch_data_0

    .line 3125
    :goto_0
    move v2, v1

    move v0, v2

    return v0

    .line 3116
    :sswitch_0
    const/16 v2, 0x2002

    move v1, v2

    .line 3117
    goto :goto_0

    .line 3119
    :sswitch_1
    const/16 v2, 0x1001

    move v1, v2

    .line 3120
    goto :goto_0

    .line 3122
    :sswitch_2
    const/16 v2, 0x1003

    move v1, v2

    goto :goto_0

    .line 3114
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .locals 11

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, p1

    const-string v5, "FragmentManager"

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 156
    const-string v5, "FragmentManager"

    const-string v6, "Activity state:"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 157
    new-instance v5, Landroidx/core/util/LogWriter;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "FragmentManager"

    invoke-direct {v6, v7}, Landroidx/core/util/LogWriter;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 158
    new-instance v5, Ljava/io/PrintWriter;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    invoke-direct {v6, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v3, v5

    .line 159
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v5, :cond_0

    .line 161
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    const-string v6, "  "

    const/4 v7, 0x0

    move-object v8, v3

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    move-object v5, v1

    throw v5

    .line 162
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 163
    const-string v5, "FragmentManager"

    const-string v6, "Failed dumping state"

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 164
    goto :goto_0

    .line 167
    :cond_0
    move-object v5, v0

    :try_start_1
    const-string v6, "  "

    const/4 v7, 0x0

    move-object v8, v3

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    goto :goto_0

    .line 168
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 169
    const-string v5, "FragmentManager"

    const-string v6, "Failed dumping state"

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    goto :goto_0
.end method

.method public static transitToStyleIndex(IZ)I
    .locals 4

    .prologue
    .line 3137
    move v0, p0

    move v1, p1

    const/4 v3, -0x1

    move v2, v3

    .line 3138
    move v3, v0

    sparse-switch v3, :sswitch_data_0

    .line 3149
    :goto_0
    move v3, v2

    move v0, v3

    return v0

    .line 3140
    :sswitch_0
    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    move v2, v3

    .line 3141
    goto :goto_0

    .line 3140
    :cond_0
    const/4 v3, 0x2

    goto :goto_1

    .line 3143
    :sswitch_1
    move v3, v1

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    :goto_2
    move v2, v3

    .line 3144
    goto :goto_0

    .line 3143
    :cond_1
    const/4 v3, 0x4

    goto :goto_2

    .line 3146
    :sswitch_2
    move v3, v1

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    :goto_3
    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x6

    goto :goto_3

    .line 3138
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private updateOnBackPressedCallbackEnabled()V
    .locals 4

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManagerImpl;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    .line 200
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->isPrimaryNavigation(Landroidx/fragment/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 199
    :goto_1
    invoke-virtual {v1, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 201
    goto :goto_0

    .line 200
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method addBackStackState(Landroidx/fragment/app/BackStackRecord;)V
    .locals 6

    .prologue
    .line 2191
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 2192
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2194
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 2195
    return-void
.end method

.method public addFragment(Landroidx/fragment/app/Fragment;Z)V
    .locals 10

    .prologue
    .line 1375
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-boolean v5, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1376
    :cond_0
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->makeActive(Landroidx/fragment/app/Fragment;)V

    .line 1377
    move-object v5, v1

    iget-boolean v5, v5, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v5, :cond_4

    .line 1378
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1379
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fragment already added: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1381
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v3, v6

    monitor-enter v5

    .line 1382
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1383
    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1384
    move-object v5, v1

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 1385
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 1386
    move-object v5, v1

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v5, :cond_2

    .line 1387
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1389
    :cond_2
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1390
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1392
    :cond_3
    move v5, v2

    if-eqz v5, :cond_4

    .line 1393
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;)V

    .line 1396
    :cond_4
    return-void

    .line 1383
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 6

    .prologue
    .line 334
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 335
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 337
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 338
    return-void
.end method

.method addRetainedFragment(Landroidx/fragment/app/Fragment;)V
    .locals 7
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 393
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 394
    sget-boolean v3, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 395
    const-string v3, "FragmentManager"

    const-string v4, "Ignoring addRetainedFragment as the state is already saved"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManagerViewModel;->addRetainedFragment(Landroidx/fragment/app/Fragment;)Z

    move-result v3

    move v2, v3

    .line 400
    move v3, v2

    if-eqz v3, :cond_2

    sget-boolean v3, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 401
    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating retained Fragments: Added "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 403
    :cond_2
    goto :goto_0
.end method

.method public allocBackStackIndex(Landroidx/fragment/app/BackStackRecord;)I
    .locals 9

    .prologue
    .line 1597
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    monitor-enter v5

    .line 1598
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_3

    .line 1599
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 1600
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1602
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .line 1603
    sget-boolean v5, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting back stack index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1604
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1605
    move v5, v3

    move-object v6, v2

    monitor-exit v6

    move v0, v5

    .line 1611
    :goto_0
    return v0

    .line 1608
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v3, v5

    .line 1609
    sget-boolean v5, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding back stack index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1610
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    move v6, v3

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1611
    move v5, v3

    move-object v6, v2

    monitor-exit v6

    move v0, v5

    goto :goto_0

    .line 1613
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public attachController(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;)V
    .locals 11
    .param p1    # Landroidx/fragment/app/FragmentHostCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentContainer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2563
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Already attached"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2564
    :cond_0
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 2565
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    .line 2566
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    .line 2567
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_1

    .line 2571
    move-object v6, v0

    invoke-direct {v6}, Landroidx/fragment/app/FragmentManagerImpl;->updateOnBackPressedCallbackEnabled()V

    .line 2574
    :cond_1
    move-object v6, v1

    instance-of v6, v6, Landroidx/activity/OnBackPressedDispatcherOwner;

    if-eqz v6, :cond_2

    .line 2575
    move-object v6, v1

    check-cast v6, Landroidx/activity/OnBackPressedDispatcherOwner;

    move-object v4, v6

    .line 2576
    move-object v6, v0

    move-object v7, v4

    invoke-interface {v7}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v7

    iput-object v7, v6, Landroidx/fragment/app/FragmentManagerImpl;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 2577
    move-object v6, v3

    if-eqz v6, :cond_3

    move-object v6, v3

    :goto_0
    move-object v5, v6

    .line 2578
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v6, v7, v8}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 2582
    :cond_2
    move-object v6, v3

    if-eqz v6, :cond_4

    .line 2583
    move-object v6, v0

    move-object v7, v3

    iget-object v7, v7, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroidx/fragment/app/FragmentManagerImpl;->getChildNonConfig(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentManagerViewModel;

    move-result-object v7

    iput-object v7, v6, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 2590
    :goto_1
    return-void

    .line 2577
    :cond_3
    move-object v6, v4

    goto :goto_0

    .line 2584
    :cond_4
    move-object v6, v1

    instance-of v6, v6, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v6, :cond_5

    .line 2585
    move-object v6, v1

    check-cast v6, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-interface {v6}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v6

    move-object v4, v6

    .line 2586
    move-object v6, v0

    move-object v7, v4

    invoke-static {v7}, Landroidx/fragment/app/FragmentManagerViewModel;->getInstance(Landroidx/lifecycle/ViewModelStore;)Landroidx/fragment/app/FragmentManagerViewModel;

    move-result-object v7

    iput-object v7, v6, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 2587
    goto :goto_1

    .line 2588
    :cond_5
    move-object v6, v0

    new-instance v7, Landroidx/fragment/app/FragmentManagerViewModel;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroidx/fragment/app/FragmentManagerViewModel;-><init>(Z)V

    iput-object v7, v6, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    goto :goto_1
.end method

.method public attachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 9

    .prologue
    .line 1464
    move-object v0, p0

    move-object v1, p1

    sget-boolean v4, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "attach: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1465
    :cond_0
    move-object v4, v1

    iget-boolean v4, v4, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v4, :cond_3

    .line 1466
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 1467
    move-object v4, v1

    iget-boolean v4, v4, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v4, :cond_3

    .line 1468
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1469
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fragment already added: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1471
    :cond_1
    sget-boolean v4, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add from attach: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1472
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v2, v5

    monitor-enter v4

    .line 1473
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1474
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1475
    move-object v4, v1

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 1476
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1477
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1481
    :cond_3
    return-void

    .line 1474
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public beginTransaction()Landroidx/fragment/app/FragmentTransaction;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    new-instance v1, Landroidx/fragment/app/BackStackRecord;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    move-object v0, v1

    return-object v0
.end method

.method checkForMenus()Z
    .locals 6

    .prologue
    .line 3096
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    .line 3097
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    move-object v3, v4

    .line 3098
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 3099
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    move-result v4

    move v1, v4

    .line 3101
    :cond_0
    move v4, v1

    if-eqz v4, :cond_1

    .line 3102
    const/4 v4, 0x1

    move v0, v4

    .line 3105
    :goto_1
    return v0

    .line 3104
    :cond_1
    goto :goto_0

    .line 3105
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method completeExecute(Landroidx/fragment/app/BackStackRecord;ZZZ)V
    .locals 16

    .prologue
    .line 1989
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v9, v2

    if-eqz v9, :cond_4

    .line 1990
    move-object v9, v1

    move v10, v4

    invoke-virtual {v9, v10}, Landroidx/fragment/app/BackStackRecord;->executePopOps(Z)V

    .line 1994
    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v9

    .line 1995
    new-instance v9, Ljava/util/ArrayList;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v9

    .line 1996
    move-object v9, v5

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 1997
    move-object v9, v6

    move v10, v2

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 1998
    move v9, v3

    if-eqz v9, :cond_0

    .line 1999
    move-object v9, v0

    move-object v10, v5

    move-object v11, v6

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-static/range {v9 .. v14}, Landroidx/fragment/app/FragmentTransition;->startTransitions(Landroidx/fragment/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2001
    :cond_0
    move v9, v4

    if-eqz v9, :cond_1

    .line 2002
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2005
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v7, v9

    :goto_1
    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/Fragment;

    move-object v8, v9

    .line 2008
    move-object v9, v8

    if-eqz v9, :cond_3

    move-object v9, v8

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v9, :cond_3

    move-object v9, v8

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v9, :cond_3

    move-object v9, v1

    move-object v10, v8

    iget v10, v10, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 2009
    invoke-virtual {v9, v10}, Landroidx/fragment/app/BackStackRecord;->interactsWith(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2010
    move-object v9, v8

    iget v9, v9, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    .line 2011
    move-object v9, v8

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v10, v8

    iget v10, v10, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    .line 2013
    :cond_2
    move v9, v4

    if-eqz v9, :cond_5

    .line 2014
    move-object v9, v8

    const/4 v10, 0x0

    iput v10, v9, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 2020
    :cond_3
    :goto_2
    goto :goto_1

    .line 1992
    :cond_4
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/BackStackRecord;->executeOps()V

    goto/16 :goto_0

    .line 2016
    :cond_5
    move-object v9, v8

    const/high16 v10, -0x40800000    # -1.0f

    iput v10, v9, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 2017
    move-object v9, v8

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_2

    .line 2021
    :cond_6
    return-void
.end method

.method completeShowHideFragment(Landroidx/fragment/app/Fragment;)V
    .locals 13

    .prologue
    .line 1163
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 1164
    move-object v5, v0

    move-object v6, v1

    move-object v7, v1

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v7

    move-object v8, v1

    iget-boolean v8, v8, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v8, :cond_2

    const/4 v8, 0x1

    :goto_0
    move-object v9, v1

    .line 1165
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getNextTransitionStyle()I

    move-result v9

    .line 1164
    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->loadAnimation(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v5

    move-object v2, v5

    .line 1166
    move-object v5, v2

    if-eqz v5, :cond_5

    move-object v5, v2

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    if-eqz v5, :cond_5

    .line 1167
    move-object v5, v2

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    move-object v6, v1

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1168
    move-object v5, v1

    iget-boolean v5, v5, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v5, :cond_4

    .line 1169
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1170
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 1191
    :goto_1
    move-object v5, v2

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    .line 1206
    :cond_0
    :goto_2
    move-object v5, v1

    iget-boolean v5, v5, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v5, :cond_1

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1207
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1209
    :cond_1
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1210
    move-object v5, v1

    move-object v6, v1

    iget-boolean v6, v6, Landroidx/fragment/app/Fragment;->mHidden:Z

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 1211
    return-void

    .line 1164
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 1172
    :cond_3
    move-object v5, v1

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    move-object v3, v5

    .line 1173
    move-object v5, v1

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v4, v5

    .line 1174
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1177
    move-object v5, v2

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    new-instance v6, Landroidx/fragment/app/FragmentManagerImpl$5;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v9, v3

    move-object v10, v4

    move-object v11, v1

    invoke-direct {v7, v8, v9, v10, v11}, Landroidx/fragment/app/FragmentManagerImpl$5;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1187
    goto :goto_1

    .line 1189
    :cond_4
    move-object v5, v1

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1193
    :cond_5
    move-object v5, v2

    if-eqz v5, :cond_6

    .line 1194
    move-object v5, v1

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v6, v2

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1195
    move-object v5, v2

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->start()V

    .line 1197
    :cond_6
    move-object v5, v1

    iget-boolean v5, v5, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v5, :cond_7

    move-object v5, v1

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v5

    if-nez v5, :cond_7

    const/16 v5, 0x8

    :goto_3
    move v3, v5

    .line 1200
    move-object v5, v1

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1201
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1202
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    goto :goto_2

    .line 1197
    :cond_7
    const/4 v5, 0x0

    goto :goto_3
.end method

.method public detachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 8

    .prologue
    .line 1446
    move-object v0, p0

    move-object v1, p1

    sget-boolean v4, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "detach: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1447
    :cond_0
    move-object v4, v1

    iget-boolean v4, v4, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v4, :cond_3

    .line 1448
    move-object v4, v1

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 1449
    move-object v4, v1

    iget-boolean v4, v4, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v4, :cond_3

    .line 1451
    sget-boolean v4, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove from detach: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1452
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 1453
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 1454
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1455
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1456
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1458
    :cond_2
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 1461
    :cond_3
    return-void

    .line 1454
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public dispatchActivityCreated()V
    .locals 3

    .prologue
    .line 2611
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2612
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    .line 2613
    move-object v1, v0

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 2614
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2685
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 2686
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    move-object v3, v4

    .line 2687
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 2688
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2685
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2691
    :cond_1
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2767
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 2768
    const/4 v4, 0x0

    move v0, v4

    .line 2778
    :goto_0
    return v0

    .line 2770
    :cond_0
    const/4 v4, 0x0

    move v2, v4

    :goto_1
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 2771
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    move-object v3, v4

    .line 2772
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 2773
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2774
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 2770
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2778
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public dispatchCreate()V
    .locals 3

    .prologue
    .line 2605
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2606
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    .line 2607
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 2608
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 11
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2703
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    iget v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v8, 0x1

    if-ge v7, v8, :cond_0

    .line 2704
    const/4 v7, 0x0

    move v0, v7

    .line 2732
    :goto_0
    return v0

    .line 2706
    :cond_0
    const/4 v7, 0x0

    move v3, v7

    .line 2707
    const/4 v7, 0x0

    move-object v4, v7

    .line 2708
    const/4 v7, 0x0

    move v5, v7

    :goto_1
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 2709
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/Fragment;

    move-object v6, v7

    .line 2710
    move-object v7, v6

    if-eqz v7, :cond_2

    .line 2711
    move-object v7, v6

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Landroidx/fragment/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2712
    const/4 v7, 0x1

    move v3, v7

    .line 2713
    move-object v7, v4

    if-nez v7, :cond_1

    .line 2714
    new-instance v7, Ljava/util/ArrayList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v7

    .line 2716
    :cond_1
    move-object v7, v4

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 2708
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2721
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    .line 2722
    const/4 v7, 0x0

    move v5, v7

    :goto_2
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 2723
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/Fragment;

    move-object v6, v7

    .line 2724
    move-object v7, v4

    if-eqz v7, :cond_4

    move-object v7, v4

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 2725
    :cond_4
    move-object v7, v6

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    .line 2722
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2730
    :cond_6
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    .line 2732
    move v7, v3

    move v0, v7

    goto :goto_0
.end method

.method public dispatchDestroy()V
    .locals 3

    .prologue
    .line 2642
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    .line 2643
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v1

    .line 2644
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 2645
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 2646
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    .line 2647
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    .line 2648
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz v1, :cond_0

    .line 2651
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->remove()V

    .line 2652
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 2654
    :cond_0
    return-void
.end method

.method public dispatchDestroyView()V
    .locals 3

    .prologue
    .line 2638
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 2639
    return-void
.end method

.method public dispatchLowMemory()V
    .locals 5

    .prologue
    .line 2694
    move-object v0, p0

    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2695
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    move-object v2, v3

    .line 2696
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 2697
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->performLowMemory()V

    .line 2694
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2700
    :cond_1
    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .locals 6

    .prologue
    .line 2667
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 2668
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    move-object v3, v4

    .line 2669
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 2670
    move-object v4, v3

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->performMultiWindowModeChanged(Z)V

    .line 2667
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2673
    :cond_1
    return-void
.end method

.method dispatchOnFragmentActivityCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 10
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2942
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_0

    .line 2943
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    move-object v4, v6

    .line 2944
    move-object v6, v4

    instance-of v6, v6, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v6, :cond_0

    .line 2945
    move-object v6, v4

    check-cast v6, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x1

    .line 2946
    invoke-virtual {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 2949
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v5, v6

    .line 2950
    move v6, v3

    if-eqz v6, :cond_1

    move-object v6, v5

    iget-boolean v6, v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v6, :cond_2

    .line 2951
    :cond_1
    move-object v6, v5

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentActivityCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 2953
    :cond_2
    goto :goto_0

    .line 2954
    :cond_3
    return-void
.end method

.method dispatchOnFragmentAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V
    .locals 10
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2894
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_0

    .line 2895
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    move-object v4, v6

    .line 2896
    move-object v6, v4

    instance-of v6, v6, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v6, :cond_0

    .line 2897
    move-object v6, v4

    check-cast v6, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x1

    .line 2898
    invoke-virtual {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 2901
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v5, v6

    .line 2902
    move v6, v3

    if-eqz v6, :cond_1

    move-object v6, v5

    iget-boolean v6, v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v6, :cond_2

    .line 2903
    :cond_1
    move-object v6, v5

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentAttached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    .line 2905
    :cond_2
    goto :goto_0

    .line 2906
    :cond_3
    return-void
.end method

.method dispatchOnFragmentCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 10
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2926
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_0

    .line 2927
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    move-object v4, v6

    .line 2928
    move-object v6, v4

    instance-of v6, v6, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v6, :cond_0

    .line 2929
    move-object v6, v4

    check-cast v6, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x1

    .line 2930
    invoke-virtual {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 2933
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v5, v6

    .line 2934
    move v6, v3

    if-eqz v6, :cond_1

    move-object v6, v5

    iget-boolean v6, v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v6, :cond_2

    .line 2935
    :cond_1
    move-object v6, v5

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 2937
    :cond_2
    goto :goto_0

    .line 2938
    :cond_3
    return-void
.end method

.method dispatchOnFragmentDestroyed(Landroidx/fragment/app/Fragment;Z)V
    .locals 8
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3064
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_0

    .line 3065
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    move-object v3, v5

    .line 3066
    move-object v5, v3

    instance-of v5, v5, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v5, :cond_0

    .line 3067
    move-object v5, v3

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v1

    const/4 v7, 0x1

    .line 3068
    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroidx/fragment/app/Fragment;Z)V

    .line 3071
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v4, v5

    .line 3072
    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v4

    iget-boolean v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v5, :cond_2

    .line 3073
    :cond_1
    move-object v5, v4

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDestroyed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3075
    :cond_2
    goto :goto_0

    .line 3076
    :cond_3
    return-void
.end method

.method dispatchOnFragmentDetached(Landroidx/fragment/app/Fragment;Z)V
    .locals 8
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3079
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_0

    .line 3080
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    move-object v3, v5

    .line 3081
    move-object v5, v3

    instance-of v5, v5, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v5, :cond_0

    .line 3082
    move-object v5, v3

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v1

    const/4 v7, 0x1

    .line 3083
    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroidx/fragment/app/Fragment;Z)V

    .line 3086
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v4, v5

    .line 3087
    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v4

    iget-boolean v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v5, :cond_2

    .line 3088
    :cond_1
    move-object v5, v4

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDetached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3090
    :cond_2
    goto :goto_0

    .line 3091
    :cond_3
    return-void
.end method

.method dispatchOnFragmentPaused(Landroidx/fragment/app/Fragment;Z)V
    .locals 8
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3003
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_0

    .line 3004
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    move-object v3, v5

    .line 3005
    move-object v5, v3

    instance-of v5, v5, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v5, :cond_0

    .line 3006
    move-object v5, v3

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v1

    const/4 v7, 0x1

    .line 3007
    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroidx/fragment/app/Fragment;Z)V

    .line 3010
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v4, v5

    .line 3011
    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v4

    iget-boolean v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v5, :cond_2

    .line 3012
    :cond_1
    move-object v5, v4

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPaused(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3014
    :cond_2
    goto :goto_0

    .line 3015
    :cond_3
    return-void
.end method

.method dispatchOnFragmentPreAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V
    .locals 10
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2878
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_0

    .line 2879
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    move-object v4, v6

    .line 2880
    move-object v6, v4

    instance-of v6, v6, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v6, :cond_0

    .line 2881
    move-object v6, v4

    check-cast v6, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x1

    .line 2882
    invoke-virtual {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 2885
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v5, v6

    .line 2886
    move v6, v3

    if-eqz v6, :cond_1

    move-object v6, v5

    iget-boolean v6, v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v6, :cond_2

    .line 2887
    :cond_1
    move-object v6, v5

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreAttached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    .line 2889
    :cond_2
    goto :goto_0

    .line 2890
    :cond_3
    return-void
.end method

.method dispatchOnFragmentPreCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 10
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2910
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_0

    .line 2911
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    move-object v4, v6

    .line 2912
    move-object v6, v4

    instance-of v6, v6, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v6, :cond_0

    .line 2913
    move-object v6, v4

    check-cast v6, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x1

    .line 2914
    invoke-virtual {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 2917
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v5, v6

    .line 2918
    move v6, v3

    if-eqz v6, :cond_1

    move-object v6, v5

    iget-boolean v6, v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v6, :cond_2

    .line 2919
    :cond_1
    move-object v6, v5

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 2921
    :cond_2
    goto :goto_0

    .line 2922
    :cond_3
    return-void
.end method

.method dispatchOnFragmentResumed(Landroidx/fragment/app/Fragment;Z)V
    .locals 8
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2988
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_0

    .line 2989
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    move-object v3, v5

    .line 2990
    move-object v5, v3

    instance-of v5, v5, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v5, :cond_0

    .line 2991
    move-object v5, v3

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v1

    const/4 v7, 0x1

    .line 2992
    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroidx/fragment/app/Fragment;Z)V

    .line 2995
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v4, v5

    .line 2996
    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v4

    iget-boolean v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v5, :cond_2

    .line 2997
    :cond_1
    move-object v5, v4

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentResumed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 2999
    :cond_2
    goto :goto_0

    .line 3000
    :cond_3
    return-void
.end method

.method dispatchOnFragmentSaveInstanceState(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 10
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3034
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_0

    .line 3035
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    move-object v4, v6

    .line 3036
    move-object v6, v4

    instance-of v6, v6, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v6, :cond_0

    .line 3037
    move-object v6, v4

    check-cast v6, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x1

    .line 3038
    invoke-virtual {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3041
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v5, v6

    .line 3042
    move v6, v3

    if-eqz v6, :cond_1

    move-object v6, v5

    iget-boolean v6, v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v6, :cond_2

    .line 3043
    :cond_1
    move-object v6, v5

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentSaveInstanceState(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 3045
    :cond_2
    goto :goto_0

    .line 3046
    :cond_3
    return-void
.end method

.method dispatchOnFragmentStarted(Landroidx/fragment/app/Fragment;Z)V
    .locals 8
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2973
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_0

    .line 2974
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    move-object v3, v5

    .line 2975
    move-object v5, v3

    instance-of v5, v5, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v5, :cond_0

    .line 2976
    move-object v5, v3

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v1

    const/4 v7, 0x1

    .line 2977
    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroidx/fragment/app/Fragment;Z)V

    .line 2980
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v4, v5

    .line 2981
    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v4

    iget-boolean v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v5, :cond_2

    .line 2982
    :cond_1
    move-object v5, v4

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStarted(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 2984
    :cond_2
    goto :goto_0

    .line 2985
    :cond_3
    return-void
.end method

.method dispatchOnFragmentStopped(Landroidx/fragment/app/Fragment;Z)V
    .locals 8
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3018
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_0

    .line 3019
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    move-object v3, v5

    .line 3020
    move-object v5, v3

    instance-of v5, v5, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v5, :cond_0

    .line 3021
    move-object v5, v3

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v1

    const/4 v7, 0x1

    .line 3022
    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroidx/fragment/app/Fragment;Z)V

    .line 3025
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v4, v5

    .line 3026
    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v4

    iget-boolean v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v5, :cond_2

    .line 3027
    :cond_1
    move-object v5, v4

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStopped(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3029
    :cond_2
    goto :goto_0

    .line 3030
    :cond_3
    return-void
.end method

.method dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 12
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2958
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v7, :cond_0

    .line 2959
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v7

    move-object v5, v7

    .line 2960
    move-object v7, v5

    instance-of v7, v7, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v7, :cond_0

    .line 2961
    move-object v7, v5

    check-cast v7, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    const/4 v11, 0x1

    .line 2962
    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 2965
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_0
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v6, v7

    .line 2966
    move v7, v4

    if-eqz v7, :cond_1

    move-object v7, v6

    iget-boolean v7, v7, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v7, :cond_2

    .line 2967
    :cond_1
    move-object v7, v6

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    .line 2969
    :cond_2
    goto :goto_0

    .line 2970
    :cond_3
    return-void
.end method

.method dispatchOnFragmentViewDestroyed(Landroidx/fragment/app/Fragment;Z)V
    .locals 8
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3049
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_0

    .line 3050
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    move-object v3, v5

    .line 3051
    move-object v5, v3

    instance-of v5, v5, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v5, :cond_0

    .line 3052
    move-object v5, v3

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v1

    const/4 v7, 0x1

    .line 3053
    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroidx/fragment/app/Fragment;Z)V

    .line 3056
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v4, v5

    .line 3057
    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v4

    iget-boolean v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v5, :cond_2

    .line 3058
    :cond_1
    move-object v5, v4

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewDestroyed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3060
    :cond_2
    goto :goto_0

    .line 3061
    :cond_3
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2752
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 2753
    const/4 v4, 0x0

    move v0, v4

    .line 2763
    :goto_0
    return v0

    .line 2755
    :cond_0
    const/4 v4, 0x0

    move v2, v4

    :goto_1
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 2756
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    move-object v3, v4

    .line 2757
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 2758
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2759
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 2755
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2763
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 6
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2782
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 2791
    :goto_0
    return-void

    .line 2785
    :cond_0
    const/4 v4, 0x0

    move v2, v4

    :goto_1
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 2786
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    move-object v3, v4

    .line 2787
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 2788
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2785
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2791
    :cond_2
    goto :goto_0
.end method

.method public dispatchPause()V
    .locals 3

    .prologue
    .line 2629
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 2630
    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .locals 6

    .prologue
    .line 2676
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 2677
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    move-object v3, v4

    .line 2678
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 2679
    move-object v4, v3

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->performPictureInPictureModeChanged(Z)V

    .line 2676
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2682
    :cond_1
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2736
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    .line 2737
    const/4 v5, 0x0

    move v0, v5

    .line 2748
    :goto_0
    return v0

    .line 2739
    :cond_0
    const/4 v5, 0x0

    move v2, v5

    .line 2740
    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 2741
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    move-object v4, v5

    .line 2742
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 2743
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2744
    const/4 v5, 0x1

    move v2, v5

    .line 2740
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2748
    :cond_2
    move v5, v2

    move v0, v5

    goto :goto_0
.end method

.method dispatchPrimaryNavigationFragmentChanged()V
    .locals 3

    .prologue
    .line 2813
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/fragment/app/FragmentManagerImpl;->updateOnBackPressedCallbackEnabled()V

    .line 2815
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    invoke-direct {v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    .line 2816
    return-void
.end method

.method public dispatchResume()V
    .locals 3

    .prologue
    .line 2623
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2624
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    .line 2625
    move-object v1, v0

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 2626
    return-void
.end method

.method public dispatchStart()V
    .locals 3

    .prologue
    .line 2617
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2618
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    .line 2619
    move-object v1, v0

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 2620
    return-void
.end method

.method public dispatchStop()V
    .locals 3

    .prologue
    .line 2633
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    .line 2634
    move-object v1, v0

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 2635
    return-void
.end method

.method doPendingDeferredStart()V
    .locals 3

    .prologue
    .line 2176
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-eqz v1, :cond_0

    .line 2177
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 2178
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 2180
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 475
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 477
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 478
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "Active Fragments in "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 479
    move-object v11, v3

    move-object v12, v0

    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 480
    move-object v11, v3

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v6, v11

    :goto_0
    move-object v11, v6

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v11, v6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/Fragment;

    move-object v7, v11

    .line 482
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v7

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 483
    move-object v11, v7

    if-eqz v11, :cond_0

    .line 484
    move-object v11, v7

    move-object v12, v5

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    invoke-virtual {v11, v12, v13, v14, v15}, Landroidx/fragment/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 486
    :cond_0
    goto :goto_0

    .line 489
    :cond_1
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v6, v11

    .line 490
    move v11, v6

    if-lez v11, :cond_2

    .line 491
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "Added Fragments:"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    const/4 v11, 0x0

    move v7, v11

    :goto_1
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_2

    .line 493
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/Fragment;

    move-object v8, v11

    .line 494
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 495
    move-object v11, v3

    const-string v12, "  #"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 496
    move-object v11, v3

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 497
    move-object v11, v3

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 498
    move-object v11, v3

    move-object v12, v8

    invoke-virtual {v12}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 502
    :cond_2
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v11, :cond_3

    .line 503
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v6, v11

    .line 504
    move v11, v6

    if-lez v11, :cond_3

    .line 505
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "Fragments Created Menus:"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    const/4 v11, 0x0

    move v7, v11

    :goto_2
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_3

    .line 507
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/Fragment;

    move-object v8, v11

    .line 508
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  #"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 509
    move-object v11, v3

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v8

    invoke-virtual {v12}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 514
    :cond_3
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v11, :cond_4

    .line 515
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v6, v11

    .line 516
    move v11, v6

    if-lez v11, :cond_4

    .line 517
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "Back Stack:"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    const/4 v11, 0x0

    move v7, v11

    :goto_3
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_4

    .line 519
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/BackStackRecord;

    move-object v8, v11

    .line 520
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  #"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 521
    move-object v11, v3

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v8

    invoke-virtual {v12}, Landroidx/fragment/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    move-object v11, v8

    move-object v12, v5

    move-object v13, v3

    invoke-virtual {v11, v12, v13}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 518
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 527
    :cond_4
    move-object v11, v0

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v7, v12

    monitor-enter v11

    .line 528
    move-object v11, v0

    :try_start_0
    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v11, :cond_5

    .line 529
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v6, v11

    .line 530
    move v11, v6

    if-lez v11, :cond_5

    .line 531
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "Back Stack Indices:"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    const/4 v11, 0x0

    move v8, v11

    :goto_4
    move v11, v8

    move v12, v6

    if-ge v11, v12, :cond_5

    .line 533
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    move v12, v8

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/BackStackRecord;

    move-object v9, v11

    .line 534
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  #"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move v12, v8

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 535
    move-object v11, v3

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 532
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 540
    :cond_5
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v11, :cond_6

    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 541
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "mAvailBackStackIndices: "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 542
    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    :cond_6
    move-object v11, v7

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v11, :cond_7

    .line 547
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v6, v11

    .line 548
    move v11, v6

    if-lez v11, :cond_7

    .line 549
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "Pending Actions:"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    const/4 v11, 0x0

    move v7, v11

    :goto_5
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_7

    .line 551
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;

    move-object v8, v11

    .line 552
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  #"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 553
    move-object v11, v3

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 550
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 544
    :catchall_0
    move-exception v11

    move-object v10, v11

    move-object v11, v7

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v10

    throw v11

    .line 558
    :cond_7
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "FragmentManager misc state:"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  mHost="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 560
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  mContainer="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 561
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v11, :cond_8

    .line 562
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  mParent="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 564
    :cond_8
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  mCurState="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v0

    iget v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 565
    move-object v11, v3

    const-string v12, " mStateSaved="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v0

    iget-boolean v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Z)V

    .line 566
    move-object v11, v3

    const-string v12, " mStopped="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v0

    iget-boolean v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Z)V

    .line 567
    move-object v11, v3

    const-string v12, " mDestroyed="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v0

    iget-boolean v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Z)V

    .line 568
    move-object v11, v0

    iget-boolean v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v11, :cond_9

    .line 569
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  mNeedMenuInvalidate="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 570
    move-object v11, v3

    move-object v12, v0

    iget-boolean v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Z)V

    .line 572
    :cond_9
    return-void
.end method

.method public enqueueAction(Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;Z)V
    .locals 9

    .prologue
    .line 1557
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, v2

    if-nez v5, :cond_0

    .line 1558
    move-object v5, v0

    invoke-direct {v5}, Landroidx/fragment/app/FragmentManagerImpl;->checkStateLoss()V

    .line 1560
    :cond_0
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    monitor-enter v5

    .line 1561
    move-object v5, v0

    :try_start_0
    iget-boolean v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v5, :cond_3

    .line 1562
    :cond_1
    move v5, v2

    if-eqz v5, :cond_2

    .line 1564
    move-object v5, v3

    monitor-exit v5

    .line 1574
    :goto_0
    return-void

    .line 1566
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Activity has been destroyed"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1573
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5

    .line 1568
    :cond_3
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v5, :cond_4

    .line 1569
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    .line 1571
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1572
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManagerImpl;->scheduleCommit()V

    .line 1573
    move-object v5, v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1574
    goto :goto_0
.end method

.method ensureInflatedFragmentView(Landroidx/fragment/app/Fragment;)V
    .locals 7

    .prologue
    .line 1137
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v2, :cond_1

    move-object v2, v1

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    if-nez v2, :cond_1

    .line 1138
    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v1

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4, v5}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 1140
    move-object v2, v1

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1141
    move-object v2, v1

    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iput-object v3, v2, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1142
    move-object v2, v1

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1143
    move-object v2, v1

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    :cond_0
    move-object v2, v1

    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v4, v1

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1145
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v5, v1

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 1150
    :cond_1
    :goto_0
    return-void

    .line 1147
    :cond_2
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    goto :goto_0
.end method

.method public execPendingActions()Z
    .locals 6

    .prologue
    .line 1721
    move-object v0, p0

    move-object v3, v0

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroidx/fragment/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 1723
    const/4 v3, 0x0

    move v1, v3

    .line 1724
    :goto_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1725
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1727
    move-object v3, v0

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1729
    move-object v3, v0

    invoke-direct {v3}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    .line 1731
    const/4 v3, 0x1

    move v1, v3

    goto :goto_0

    .line 1729
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    invoke-direct {v3}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    .line 1730
    move-object v3, v2

    throw v3

    .line 1734
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Landroidx/fragment/app/FragmentManagerImpl;->updateOnBackPressedCallbackEnabled()V

    .line 1735
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 1736
    move-object v3, v0

    invoke-direct {v3}, Landroidx/fragment/app/FragmentManagerImpl;->burpActive()V

    .line 1738
    move v3, v1

    move v0, v3

    return v0
.end method

.method public execSingleAction(Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;Z)V
    .locals 7

    .prologue
    .line 1688
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v2

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v4, :cond_1

    .line 1705
    :cond_0
    :goto_0
    return-void

    .line 1692
    :cond_1
    move-object v4, v0

    move v5, v2

    invoke-direct {v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 1693
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-interface {v4, v5, v6}, Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1694
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1696
    move-object v4, v0

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {v4, v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1698
    move-object v4, v0

    invoke-direct {v4}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    .line 1702
    :cond_2
    move-object v4, v0

    invoke-direct {v4}, Landroidx/fragment/app/FragmentManagerImpl;->updateOnBackPressedCallbackEnabled()V

    .line 1703
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 1704
    move-object v4, v0

    invoke-direct {v4}, Landroidx/fragment/app/FragmentManagerImpl;->burpActive()V

    .line 1705
    goto :goto_0

    .line 1698
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    invoke-direct {v4}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    .line 1699
    move-object v4, v3

    throw v4
.end method

.method public executePendingTransactions()Z
    .locals 3

    .prologue
    .line 183
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v2

    move v1, v2

    .line 184
    move-object v2, v0

    invoke-direct {v2}, Landroidx/fragment/app/FragmentManagerImpl;->forcePostponedTransactions()V

    .line 185
    move v2, v1

    move v0, v2

    return v0
.end method

.method public findFragmentById(I)Landroidx/fragment/app/Fragment;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1487
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 1488
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    move-object v3, v4

    .line 1489
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    iget v4, v4, Landroidx/fragment/app/Fragment;->mFragmentId:I

    move v5, v1

    if-ne v4, v5, :cond_0

    .line 1490
    move-object v4, v3

    move-object v0, v4

    .line 1499
    :goto_1
    return-object v0

    .line 1487
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1494
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_2
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    move-object v3, v4

    .line 1495
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v3

    iget v4, v4, Landroidx/fragment/app/Fragment;->mFragmentId:I

    move v5, v1

    if-ne v4, v5, :cond_2

    .line 1496
    move-object v4, v3

    move-object v0, v4

    goto :goto_1

    .line 1498
    :cond_2
    goto :goto_2

    .line 1499
    :cond_3
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1505
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-eqz v4, :cond_1

    .line 1507
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 1508
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    move-object v3, v4

    .line 1509
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v1

    move-object v5, v3

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1510
    move-object v4, v3

    move-object v0, v4

    .line 1522
    :goto_1
    return-object v0

    .line 1507
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1514
    :cond_1
    move-object v4, v1

    if-eqz v4, :cond_3

    .line 1516
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_2
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    move-object v3, v4

    .line 1517
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v1

    move-object v5, v3

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1518
    move-object v4, v3

    move-object v0, v4

    goto :goto_1

    .line 1520
    :cond_2
    goto :goto_2

    .line 1522
    :cond_3
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1526
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    move-object v3, v4

    .line 1527
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v3, v5

    if-eqz v4, :cond_0

    .line 1528
    move-object v4, v3

    move-object v0, v4

    .line 1531
    :goto_1
    return-object v0

    .line 1530
    :cond_0
    goto :goto_0

    .line 1531
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public freeBackStackIndex(I)V
    .locals 8

    .prologue
    .line 1642
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 1643
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    move v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1644
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 1645
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1647
    :cond_0
    sget-boolean v4, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Freeing back stack index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1648
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    move v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1649
    move-object v4, v2

    monitor-exit v4

    .line 1650
    return-void

    .line 1649
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method getActiveFragmentCount()I
    .locals 2

    .prologue
    .line 435
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    move v0, v1

    return v0
.end method

.method getActiveFragments()Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    move-object v0, p0

    new-instance v1, Ljava/util/ArrayList;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    return-object v0
.end method

.method public getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;
    .locals 4

    .prologue
    .line 329
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-object v0, v2

    return-object v0
.end method

.method public getBackStackEntryCount()I
    .locals 2

    .prologue
    .line 324
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getChildNonConfig(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentManagerViewModel;
    .locals 4
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 389
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerViewModel;->getChildNonConfig(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentManagerViewModel;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 359
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 360
    move-object v5, v3

    if-nez v5, :cond_0

    .line 361
    const/4 v5, 0x0

    move-object v0, v5

    .line 368
    :goto_0
    return-object v0

    .line 363
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    move-object v4, v5

    .line 364
    move-object v5, v4

    if-nez v5, :cond_1

    .line 365
    move-object v5, v0

    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fragment no longer exists for key "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": unique id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 368
    :cond_1
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method

.method public getFragmentFactory()Landroidx/fragment/app/FragmentFactory;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 2836
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v2

    move-object v1, v2

    .line 2837
    move-object v2, v1

    sget-object v3, Landroidx/fragment/app/FragmentManagerImpl;->DEFAULT_FACTORY:Landroidx/fragment/app/FragmentFactory;

    if-ne v2, v3, :cond_1

    .line 2838
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    .line 2843
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManagerImpl;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v2

    move-object v0, v2

    .line 2855
    :goto_0
    return-object v0

    .line 2845
    :cond_0
    move-object v2, v0

    new-instance v3, Landroidx/fragment/app/FragmentManagerImpl$6;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/fragment/app/FragmentManagerImpl$6;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->setFragmentFactory(Landroidx/fragment/app/FragmentFactory;)V

    .line 2855
    :cond_1
    move-object v2, v0

    invoke-super {v2}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public getFragments()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 375
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    .line 378
    :goto_0
    return-object v0

    .line 377
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 378
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .locals 2

    .prologue
    .line 3252
    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2821
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    move-object v0, v1

    return-object v0
.end method

.method getViewModelStore(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelStore;
    .locals 4
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 384
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerViewModel;->getViewModelStore(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelStore;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method handleOnBackPressed()V
    .locals 2

    .prologue
    .line 230
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v1

    .line 231
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->popBackStackImmediate()Z

    move-result v1

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v1}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    goto :goto_0
.end method

.method public hideFragment(Landroidx/fragment/app/Fragment;)V
    .locals 6

    .prologue
    .line 1420
    move-object v0, p0

    move-object v1, p1

    sget-boolean v2, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hide: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1421
    :cond_0
    move-object v2, v1

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v2, :cond_1

    .line 1422
    move-object v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1425
    move-object v2, v1

    move-object v3, v1

    iget-boolean v3, v3, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1427
    :cond_1
    return-void

    .line 1425
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 2

    .prologue
    .line 454
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    move v0, v1

    return v0
.end method

.method isPrimaryNavigation(Landroidx/fragment/app/Fragment;)Z
    .locals 6
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 211
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-nez v4, :cond_0

    .line 212
    const/4 v4, 0x1

    move v0, v4

    .line 220
    :goto_0
    return v0

    .line 214
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v2, v4

    .line 215
    move-object v4, v2

    .line 216
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManagerImpl;->getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    move-object v3, v4

    .line 220
    move-object v4, v1

    move-object v5, v3

    if-ne v4, v5, :cond_1

    move-object v4, v0

    move-object v5, v2

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    .line 221
    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->isPrimaryNavigation(Landroidx/fragment/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 220
    :goto_1
    move v0, v4

    goto :goto_0

    .line 221
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method isStateAtLeast(I)Z
    .locals 4

    .prologue
    .line 718
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    move v3, v1

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isStateSaved()Z
    .locals 2

    .prologue
    .line 1546
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method loadAnimation(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    .locals 17

    .prologue
    .line 603
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v12, v1

    invoke-virtual {v12}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v12

    move v5, v12

    .line 605
    move-object v12, v1

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 607
    move-object v12, v1

    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v12, :cond_0

    move-object v12, v1

    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 608
    const/4 v12, 0x0

    move-object v0, v12

    .line 702
    :goto_0
    return-object v0

    .line 610
    :cond_0
    move-object v12, v1

    move v13, v2

    move v14, v3

    move v15, v5

    invoke-virtual {v12, v13, v14, v15}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v12

    move-object v6, v12

    .line 611
    move-object v12, v6

    if-eqz v12, :cond_1

    .line 612
    new-instance v12, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v6

    invoke-direct {v13, v14}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    move-object v0, v12

    goto :goto_0

    .line 615
    :cond_1
    move-object v12, v1

    move v13, v2

    move v14, v3

    move v15, v5

    invoke-virtual {v12, v13, v14, v15}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v12

    move-object v7, v12

    .line 616
    move-object v12, v7

    if-eqz v12, :cond_2

    .line 617
    new-instance v12, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v7

    invoke-direct {v13, v14}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V

    move-object v0, v12

    goto :goto_0

    .line 620
    :cond_2
    move v12, v5

    if-eqz v12, :cond_5

    .line 621
    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move v13, v5

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    .line 622
    const-string v12, "anim"

    move-object v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    move v9, v12

    .line 623
    const/4 v12, 0x0

    move v10, v12

    .line 624
    move v12, v9

    if-eqz v12, :cond_4

    .line 627
    move-object v12, v0

    :try_start_0
    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    move v13, v5

    invoke-static {v12, v13}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v12

    move-object v6, v12

    .line 628
    move-object v12, v6

    if-eqz v12, :cond_3

    .line 629
    new-instance v12, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v6

    invoke-direct {v13, v14}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v12

    goto :goto_0

    .line 632
    :cond_3
    const/4 v12, 0x1

    move v10, v12

    .line 639
    :cond_4
    :goto_1
    move v12, v10

    if-nez v12, :cond_5

    .line 642
    move-object v12, v0

    :try_start_1
    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    move v13, v5

    invoke-static {v12, v13}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v12

    move-object v7, v12

    .line 643
    move-object v12, v7

    if-eqz v12, :cond_5

    .line 644
    new-instance v12, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v7

    invoke-direct {v13, v14}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v12

    goto/16 :goto_0

    .line 633
    :catch_0
    move-exception v12

    move-object v11, v12

    .line 634
    move-object v12, v11

    throw v12

    .line 635
    :catch_1
    move-exception v12

    move-object v11, v12

    goto :goto_1

    .line 660
    :cond_5
    move v12, v2

    if-nez v12, :cond_7

    .line 661
    const/4 v12, 0x0

    move-object v0, v12

    goto/16 :goto_0

    .line 646
    :catch_2
    move-exception v12

    move-object v11, v12

    .line 647
    move v12, v9

    if-eqz v12, :cond_6

    .line 649
    move-object v12, v11

    throw v12

    .line 652
    :cond_6
    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    move v13, v5

    invoke-static {v12, v13}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v12

    move-object v6, v12

    .line 653
    move-object v12, v6

    if-eqz v12, :cond_5

    .line 654
    new-instance v12, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v6

    invoke-direct {v13, v14}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    move-object v0, v12

    goto/16 :goto_0

    .line 664
    :cond_7
    move v12, v2

    move v13, v3

    invoke-static {v12, v13}, Landroidx/fragment/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result v12

    move v8, v12

    .line 665
    move v12, v8

    if-gez v12, :cond_8

    .line 666
    const/4 v12, 0x0

    move-object v0, v12

    goto/16 :goto_0

    .line 669
    :cond_8
    move v12, v8

    packed-switch v12, :pswitch_data_0

    .line 685
    move v12, v4

    if-nez v12, :cond_9

    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentHostCallback;->onHasWindowAnimations()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 686
    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentHostCallback;->onGetWindowAnimations()I

    move-result v12

    move v4, v12

    .line 688
    :cond_9
    move v12, v4

    if-nez v12, :cond_a

    .line 689
    const/4 v12, 0x0

    move-object v0, v12

    goto/16 :goto_0

    .line 671
    :pswitch_0
    const/high16 v12, 0x3f900000    # 1.125f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v12, v13, v14, v15}, Landroidx/fragment/app/FragmentManagerImpl;->makeOpenCloseAnimation(FFFF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v12

    move-object v0, v12

    goto/16 :goto_0

    .line 673
    :pswitch_1
    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f79999a    # 0.975f

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Landroidx/fragment/app/FragmentManagerImpl;->makeOpenCloseAnimation(FFFF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v12

    move-object v0, v12

    goto/16 :goto_0

    .line 675
    :pswitch_2
    const v12, 0x3f79999a    # 0.975f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v12, v13, v14, v15}, Landroidx/fragment/app/FragmentManagerImpl;->makeOpenCloseAnimation(FFFF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v12

    move-object v0, v12

    goto/16 :goto_0

    .line 677
    :pswitch_3
    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f89999a    # 1.075f

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Landroidx/fragment/app/FragmentManagerImpl;->makeOpenCloseAnimation(FFFF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v12

    move-object v0, v12

    goto/16 :goto_0

    .line 679
    :pswitch_4
    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v12, v13}, Landroidx/fragment/app/FragmentManagerImpl;->makeFadeAnimation(FF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v12

    move-object v0, v12

    goto/16 :goto_0

    .line 681
    :pswitch_5
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroidx/fragment/app/FragmentManagerImpl;->makeFadeAnimation(FF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v12

    move-object v0, v12

    goto/16 :goto_0

    .line 702
    :cond_a
    const/4 v12, 0x0

    move-object v0, v12

    goto/16 :goto_0

    .line 669
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method makeActive(Landroidx/fragment/app/Fragment;)V
    .locals 6

    .prologue
    .line 1331
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1345
    :goto_0
    return-void

    .line 1335
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1336
    move-object v2, v1

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mRetainInstanceChangedWhileDetached:Z

    if-eqz v2, :cond_1

    .line 1337
    move-object v2, v1

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    if-eqz v2, :cond_3

    .line 1338
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->addRetainedFragment(Landroidx/fragment/app/Fragment;)V

    .line 1342
    :goto_1
    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mRetainInstanceChangedWhileDetached:Z

    .line 1344
    :cond_1
    sget-boolean v2, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added fragment to active set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1345
    :cond_2
    goto :goto_0

    .line 1340
    :cond_3
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->removeRetainedFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_1
.end method

.method makeInactive(Landroidx/fragment/app/Fragment;)V
    .locals 8

    .prologue
    .line 1348
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    move-object v5, v1

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1372
    :goto_0
    return-void

    .line 1352
    :cond_0
    sget-boolean v4, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed fragment from active set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1355
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    move-object v3, v4

    .line 1356
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v1

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    move-object v5, v3

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1357
    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 1358
    move-object v4, v3

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 1360
    :cond_2
    goto :goto_1

    .line 1363
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    move-object v5, v1

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1364
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->removeRetainedFragment(Landroidx/fragment/app/Fragment;)V

    .line 1366
    move-object v4, v1

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 1369
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    move-object v6, v1

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    iput-object v5, v4, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 1371
    :cond_4
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->initState()V

    .line 1372
    goto :goto_0
.end method

.method moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V
    .locals 15

    .prologue
    .line 1220
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v8, v1

    if-nez v8, :cond_0

    .line 1277
    :goto_0
    return-void

    .line 1223
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1224
    sget-boolean v8, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 1225
    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring moving "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to state "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget v10, v10, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "since it is not added to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1228
    :cond_1
    goto :goto_0

    .line 1230
    :cond_2
    move-object v8, v0

    iget v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    move v2, v8

    .line 1231
    move-object v8, v1

    iget-boolean v8, v8, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v8, :cond_3

    .line 1232
    move-object v8, v1

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1233
    move v8, v2

    const/4 v9, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v2, v8

    .line 1238
    :cond_3
    :goto_1
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move-object v11, v1

    invoke-virtual {v11}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v11

    move-object v12, v1

    invoke-virtual {v12}, Landroidx/fragment/app/Fragment;->getNextTransitionStyle()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1240
    move-object v8, v1

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v8, :cond_6

    .line 1242
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentUnder(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v8

    move-object v3, v8

    .line 1243
    move-object v8, v3

    if-eqz v8, :cond_4

    .line 1244
    move-object v8, v3

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v4, v8

    .line 1246
    move-object v8, v1

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    move-object v5, v8

    .line 1247
    move-object v8, v5

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    move v6, v8

    .line 1248
    move-object v8, v5

    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    move v7, v8

    .line 1249
    move v8, v7

    move v9, v6

    if-ge v8, v9, :cond_4

    .line 1250
    move-object v8, v5

    move v9, v7

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1251
    move-object v8, v5

    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1254
    :cond_4
    move-object v8, v1

    iget-boolean v8, v8, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v8, :cond_6

    move-object v8, v1

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v8, :cond_6

    .line 1256
    move-object v8, v1

    iget v8, v8, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_5

    .line 1257
    move-object v8, v1

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v9, v1

    iget v9, v9, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1259
    :cond_5
    move-object v8, v1

    const/4 v9, 0x0

    iput v9, v8, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 1260
    move-object v8, v1

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    .line 1262
    move-object v8, v0

    move-object v9, v1

    move-object v10, v1

    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v10

    const/4 v11, 0x1

    move-object v12, v1

    .line 1263
    invoke-virtual {v12}, Landroidx/fragment/app/Fragment;->getNextTransitionStyle()I

    move-result v12

    .line 1262
    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->loadAnimation(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v8

    move-object v4, v8

    .line 1264
    move-object v8, v4

    if-eqz v8, :cond_6

    .line 1265
    move-object v8, v4

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v8, :cond_9

    .line 1266
    move-object v8, v1

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v9, v4

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v8, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1274
    :cond_6
    :goto_2
    move-object v8, v1

    iget-boolean v8, v8, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v8, :cond_7

    .line 1275
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->completeShowHideFragment(Landroidx/fragment/app/Fragment;)V

    .line 1277
    :cond_7
    goto/16 :goto_0

    .line 1235
    :cond_8
    move v8, v2

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v2, v8

    goto/16 :goto_1

    .line 1268
    :cond_9
    move-object v8, v4

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1269
    move-object v8, v4

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v8}, Landroid/animation/Animator;->start()V

    goto :goto_2
.end method

.method moveToState(IZ)V
    .locals 10

    .prologue
    .line 1289
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v6, :cond_0

    move v6, v1

    if-eqz v6, :cond_0

    .line 1290
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "No activity"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1293
    :cond_0
    move v6, v2

    if-nez v6, :cond_1

    move v6, v1

    move-object v7, v0

    iget v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    if-ne v6, v7, :cond_1

    .line 1320
    :goto_0
    return-void

    .line 1297
    :cond_1
    move-object v6, v0

    move v7, v1

    iput v7, v6, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    .line 1300
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 1301
    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 1302
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    move-object v5, v6

    .line 1303
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    .line 1301
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1308
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_2
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    move-object v5, v6

    .line 1309
    move-object v6, v5

    if-eqz v6, :cond_4

    move-object v6, v5

    iget-boolean v6, v6, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-nez v6, :cond_3

    move-object v6, v5

    iget-boolean v6, v6, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v6, :cond_4

    :cond_3
    move-object v6, v5

    iget-boolean v6, v6, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-nez v6, :cond_4

    .line 1310
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    .line 1312
    :cond_4
    goto :goto_2

    .line 1314
    :cond_5
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1316
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v6, :cond_6

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v6, :cond_6

    move-object v6, v0

    iget v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    .line 1317
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 1318
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1320
    :cond_6
    goto :goto_0
.end method

.method moveToState(Landroidx/fragment/app/Fragment;)V
    .locals 8

    .prologue
    .line 1133
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1134
    return-void
.end method

.method moveToState(Landroidx/fragment/app/Fragment;IIIZ)V
    .locals 16

    .prologue
    .line 725
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v9, v1

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v9, :cond_0

    move-object v9, v1

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v9, :cond_1

    :cond_0
    move v9, v2

    const/4 v10, 0x1

    if-le v9, v10, :cond_1

    .line 726
    const/4 v9, 0x1

    move v2, v9

    .line 728
    :cond_1
    move-object v9, v1

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v9, :cond_2

    move v9, v2

    move-object v10, v1

    iget v10, v10, Landroidx/fragment/app/Fragment;->mState:I

    if-le v9, v10, :cond_2

    .line 729
    move-object v9, v1

    iget v9, v9, Landroidx/fragment/app/Fragment;->mState:I

    if-nez v9, :cond_4

    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 731
    const/4 v9, 0x1

    move v2, v9

    .line 739
    :cond_2
    :goto_0
    move-object v9, v1

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v9, :cond_3

    move-object v9, v1

    iget v9, v9, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v10, 0x3

    if-ge v9, v10, :cond_3

    move v9, v2

    const/4 v10, 0x2

    if-le v9, v10, :cond_3

    .line 740
    const/4 v9, 0x2

    move v2, v9

    .line 744
    :cond_3
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    sget-object v10, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v9, v10, :cond_5

    .line 745
    move v9, v2

    const/4 v10, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v2, v9

    .line 749
    :goto_1
    move-object v9, v1

    iget v9, v9, Landroidx/fragment/app/Fragment;->mState:I

    move v10, v2

    if-gt v9, v10, :cond_27

    .line 753
    move-object v9, v1

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v9, :cond_6

    move-object v9, v1

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-nez v9, :cond_6

    .line 1064
    :goto_2
    return-void

    .line 734
    :cond_4
    move-object v9, v1

    iget v9, v9, Landroidx/fragment/app/Fragment;->mState:I

    move v2, v9

    goto :goto_0

    .line 747
    :cond_5
    move v9, v2

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v10}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v2, v9

    goto :goto_1

    .line 756
    :cond_6
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_7

    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 761
    :cond_7
    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 762
    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 763
    move-object v9, v0

    move-object v10, v1

    move-object v11, v1

    invoke-virtual {v11}, Landroidx/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 765
    :cond_8
    move-object v9, v1

    iget v9, v9, Landroidx/fragment/app/Fragment;->mState:I

    packed-switch v9, :pswitch_data_0

    .line 1059
    :cond_9
    :goto_3
    move-object v9, v1

    iget v9, v9, Landroidx/fragment/app/Fragment;->mState:I

    move v10, v2

    if-eq v9, v10, :cond_a

    .line 1060
    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moveToState: Fragment state for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not updated inline; expected state "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    iget v11, v11, Landroidx/fragment/app/Fragment;->mState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1062
    move-object v9, v1

    move v10, v2

    iput v10, v9, Landroidx/fragment/app/Fragment;->mState:I

    .line 1064
    :cond_a
    goto :goto_2

    .line 767
    :pswitch_0
    move v9, v2

    if-lez v9, :cond_16

    .line 768
    sget-boolean v9, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_b

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moveto CREATED: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 769
    :cond_b
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v9, :cond_d

    .line 770
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v10}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 771
    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    .line 770
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 772
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v11, "android:view_state"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v10

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 774
    move-object v9, v0

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v11, "android:target_state"

    invoke-virtual {v9, v10, v11}, Landroidx/fragment/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v9

    move-object v6, v9

    .line 776
    move-object v9, v1

    move-object v10, v6

    if-eqz v10, :cond_e

    move-object v10, v6

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    :goto_4
    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 777
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v9, :cond_c

    .line 778
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v11, "android:target_req_state"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, v9, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    .line 781
    :cond_c
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    if-eqz v9, :cond_f

    .line 782
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-boolean v10, v9, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 783
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    .line 788
    :goto_5
    move-object v9, v1

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    if-nez v9, :cond_d

    .line 789
    move-object v9, v1

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 790
    move v9, v2

    const/4 v10, 0x2

    if-le v9, v10, :cond_d

    .line 791
    const/4 v9, 0x2

    move v2, v9

    .line 796
    :cond_d
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 797
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 798
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v10, :cond_10

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    :goto_6
    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 803
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_13

    .line 804
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eq v9, v10, :cond_11

    .line 805
    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fragment "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " declared target fragment "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " that does not belong to this FragmentManager!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 776
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 785
    :cond_f
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v11, "android:user_visible_hint"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v9, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    goto/16 :goto_5

    .line 798
    :cond_10
    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v10, v10, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    goto :goto_6

    .line 809
    :cond_11
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget v9, v9, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v10, 0x1

    if-ge v9, v10, :cond_12

    .line 810
    move-object v9, v0

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 812
    :cond_12
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 813
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 815
    :cond_13
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v9, :cond_15

    .line 816
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/Fragment;

    move-object v6, v9

    .line 817
    move-object v9, v6

    if-nez v9, :cond_14

    .line 818
    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fragment "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " declared target fragment "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " that does not belong to this FragmentManager!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 822
    :cond_14
    move-object v9, v6

    iget v9, v9, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v10, 0x1

    if-ge v9, v10, :cond_15

    .line 823
    move-object v9, v0

    move-object v10, v6

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 827
    :cond_15
    move-object v9, v0

    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v11}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 828
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->performAttach()V

    .line 829
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    if-nez v9, :cond_23

    .line 830
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/fragment/app/FragmentHostCallback;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    .line 834
    :goto_7
    move-object v9, v0

    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v11}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 836
    move-object v9, v1

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    if-nez v9, :cond_24

    .line 837
    move-object v9, v0

    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 838
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 839
    move-object v9, v0

    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 850
    :cond_16
    :goto_8
    :pswitch_1
    move v9, v2

    if-lez v9, :cond_17

    .line 851
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/fragment/app/FragmentManagerImpl;->ensureInflatedFragmentView(Landroidx/fragment/app/Fragment;)V

    .line 854
    :cond_17
    move v9, v2

    const/4 v10, 0x1

    if-le v9, v10, :cond_1f

    .line 855
    sget-boolean v9, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_18

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 856
    :cond_18
    move-object v9, v1

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-nez v9, :cond_1d

    .line 857
    const/4 v9, 0x0

    move-object v6, v9

    .line 858
    move-object v9, v1

    iget v9, v9, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-eqz v9, :cond_1a

    .line 859
    move-object v9, v1

    iget v9, v9, Landroidx/fragment/app/Fragment;->mContainerId:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_19

    .line 860
    move-object v9, v0

    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot create fragment "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " for a container view with no id"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 865
    :cond_19
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    move-object v10, v1

    iget v10, v10, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v9, v10}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    move-object v6, v9

    .line 866
    move-object v9, v6

    if-nez v9, :cond_1a

    move-object v9, v1

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mRestored:Z

    if-nez v9, :cond_1a

    .line 869
    move-object v9, v1

    :try_start_0
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move-object v10, v1

    iget v10, v10, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v7, v9

    .line 873
    :goto_9
    move-object v9, v0

    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No view found for id 0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    iget v13, v13, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 875
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") for fragment "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 873
    invoke-direct {v9, v10}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 880
    :cond_1a
    move-object v9, v1

    move-object v10, v6

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 881
    move-object v9, v1

    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v10, v11}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v10

    move-object v11, v6

    move-object v12, v1

    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v10, v11, v12}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 883
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v9, :cond_26

    .line 884
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    .line 885
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 886
    move-object v9, v6

    if-eqz v9, :cond_1b

    .line 887
    move-object v9, v6

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 889
    :cond_1b
    move-object v9, v1

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v9, :cond_1c

    .line 890
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 892
    :cond_1c
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v11, v1

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v10, v11}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 893
    move-object v9, v0

    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v12, v1

    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 897
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_25

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v10, :cond_25

    const/4 v10, 0x1

    :goto_a
    iput-boolean v10, v9, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    .line 904
    :cond_1d
    :goto_b
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 905
    move-object v9, v0

    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 906
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v9, :cond_1e

    .line 907
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    .line 909
    :cond_1e
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 913
    :cond_1f
    :pswitch_2
    move v9, v2

    const/4 v10, 0x2

    if-le v9, v10, :cond_21

    .line 914
    sget-boolean v9, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_20

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moveto STARTED: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 915
    :cond_20
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->performStart()V

    .line 916
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroidx/fragment/app/Fragment;Z)V

    .line 920
    :cond_21
    :pswitch_3
    move v9, v2

    const/4 v10, 0x3

    if-le v9, v10, :cond_9

    .line 921
    sget-boolean v9, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_22

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moveto RESUMED: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 922
    :cond_22
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->performResume()V

    .line 923
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroidx/fragment/app/Fragment;Z)V

    .line 924
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 925
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_3

    .line 832
    :cond_23
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_7

    .line 841
    :cond_24
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 842
    move-object v9, v1

    const/4 v10, 0x1

    iput v10, v9, Landroidx/fragment/app/Fragment;->mState:I

    goto/16 :goto_8

    .line 870
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 871
    const-string v9, "unknown"

    move-object v7, v9

    goto/16 :goto_9

    .line 897
    :cond_25
    const/4 v10, 0x0

    goto/16 :goto_a

    .line 900
    :cond_26
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_b

    .line 928
    :cond_27
    move-object v9, v1

    iget v9, v9, Landroidx/fragment/app/Fragment;->mState:I

    move v10, v2

    if-le v9, v10, :cond_9

    .line 929
    move-object v9, v1

    iget v9, v9, Landroidx/fragment/app/Fragment;->mState:I

    packed-switch v9, :pswitch_data_1

    goto/16 :goto_3

    .line 987
    :cond_28
    :goto_c
    :pswitch_4
    move v9, v2

    const/4 v10, 0x1

    if-ge v9, v10, :cond_9

    .line 988
    move-object v9, v0

    iget-boolean v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v9, :cond_29

    .line 995
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_35

    .line 996
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v9

    move-object v6, v9

    .line 997
    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 998
    move-object v9, v6

    invoke-virtual {v9}, Landroid/view/View;->clearAnimation()V

    .line 1005
    :cond_29
    :goto_d
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_2a

    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v9

    if-eqz v9, :cond_36

    .line 1010
    :cond_2a
    move-object v9, v1

    move v10, v2

    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->setStateAfterAnimating(I)V

    .line 1011
    const/4 v9, 0x1

    move v2, v9

    goto/16 :goto_3

    .line 931
    :pswitch_5
    move v9, v2

    const/4 v10, 0x4

    if-ge v9, v10, :cond_2c

    .line 932
    sget-boolean v9, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_2b

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "movefrom RESUMED: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 933
    :cond_2b
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->performPause()V

    .line 934
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroidx/fragment/app/Fragment;Z)V

    .line 938
    :cond_2c
    :pswitch_6
    move v9, v2

    const/4 v10, 0x3

    if-ge v9, v10, :cond_2e

    .line 939
    sget-boolean v9, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_2d

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "movefrom STARTED: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 940
    :cond_2d
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->performStop()V

    .line 941
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroidx/fragment/app/Fragment;Z)V

    .line 945
    :cond_2e
    :pswitch_7
    move v9, v2

    const/4 v10, 0x2

    if-ge v9, v10, :cond_28

    .line 946
    sget-boolean v9, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_2f

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 947
    :cond_2f
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v9, :cond_30

    .line 950
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/fragment/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroidx/fragment/app/Fragment;)Z

    move-result v9

    if-eqz v9, :cond_30

    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v9, :cond_30

    .line 951
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/fragment/app/FragmentManagerImpl;->saveFragmentViewState(Landroidx/fragment/app/Fragment;)V

    .line 954
    :cond_30
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->performDestroyView()V

    .line 955
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroidx/fragment/app/Fragment;Z)V

    .line 956
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v9, :cond_34

    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v9, :cond_34

    .line 958
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 959
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->clearAnimation()V

    .line 960
    const/4 v9, 0x0

    move-object v6, v9

    .line 962
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v9

    if-eqz v9, :cond_31

    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v9

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-nez v9, :cond_34

    .line 963
    :cond_31
    move-object v9, v0

    iget v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    if-lez v9, :cond_32

    move-object v9, v0

    iget-boolean v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v9, :cond_32

    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 964
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_32

    move-object v9, v1

    iget v9, v9, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_32

    .line 966
    move-object v9, v0

    move-object v10, v1

    move v11, v3

    const/4 v12, 0x0

    move v13, v4

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/fragment/app/FragmentManagerImpl;->loadAnimation(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v9

    move-object v6, v9

    .line 969
    :cond_32
    move-object v9, v1

    const/4 v10, 0x0

    iput v10, v9, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 970
    move-object v9, v6

    if-eqz v9, :cond_33

    .line 971
    move-object v9, v0

    move-object v10, v1

    move-object v11, v6

    move v12, v2

    invoke-direct {v9, v10, v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->animateRemoveFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;I)V

    .line 973
    :cond_33
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 976
    :cond_34
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 977
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 980
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 981
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 982
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    .line 983
    move-object v9, v1

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/fragment/app/Fragment;->mInLayout:Z

    goto/16 :goto_c

    .line 999
    :cond_35
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v9

    if-eqz v9, :cond_29

    .line 1000
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v9

    move-object v6, v9

    .line 1001
    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1002
    move-object v9, v6

    invoke-virtual {v9}, Landroid/animation/Animator;->cancel()V

    goto/16 :goto_d

    .line 1013
    :cond_36
    sget-boolean v9, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_37

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "movefrom CREATED: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1014
    :cond_37
    move-object v9, v1

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v9, :cond_3c

    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v9

    if-nez v9, :cond_3c

    const/4 v9, 0x1

    :goto_e
    move v6, v9

    .line 1015
    move v9, v6

    if-nez v9, :cond_38

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/fragment/app/FragmentManagerViewModel;->shouldDestroy(Landroidx/fragment/app/Fragment;)Z

    move-result v9

    if-eqz v9, :cond_40

    .line 1017
    :cond_38
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    instance-of v9, v9, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v9, :cond_3d

    .line 1018
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v9}, Landroidx/fragment/app/FragmentManagerViewModel;->isCleared()Z

    move-result v9

    move v7, v9

    .line 1025
    :goto_f
    move v9, v6

    if-nez v9, :cond_39

    move v9, v7

    if-eqz v9, :cond_3a

    .line 1026
    :cond_39
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/fragment/app/FragmentManagerViewModel;->clearNonConfigState(Landroidx/fragment/app/Fragment;)V

    .line 1028
    :cond_3a
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->performDestroy()V

    .line 1029
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroidx/fragment/app/Fragment;Z)V

    .line 1034
    :goto_10
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->performDetach()V

    .line 1035
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroidx/fragment/app/Fragment;Z)V

    .line 1036
    move v9, v5

    if-nez v9, :cond_9

    .line 1037
    move v9, v6

    if-nez v9, :cond_3b

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/fragment/app/FragmentManagerViewModel;->shouldDestroy(Landroidx/fragment/app/Fragment;)Z

    move-result v9

    if-eqz v9, :cond_41

    .line 1038
    :cond_3b
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/fragment/app/FragmentManagerImpl;->makeInactive(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_3

    .line 1014
    :cond_3c
    const/4 v9, 0x0

    goto :goto_e

    .line 1019
    :cond_3d
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v9}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v9

    instance-of v9, v9, Landroid/app/Activity;

    if-eqz v9, :cond_3f

    .line 1020
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v9}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Landroid/app/Activity;

    move-object v8, v9

    .line 1021
    move-object v9, v8

    invoke-virtual {v9}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v9

    if-nez v9, :cond_3e

    const/4 v9, 0x1

    :goto_11
    move v7, v9

    .line 1022
    goto :goto_f

    .line 1021
    :cond_3e
    const/4 v9, 0x0

    goto :goto_11

    .line 1023
    :cond_3f
    const/4 v9, 0x1

    move v7, v9

    goto :goto_f

    .line 1031
    :cond_40
    move-object v9, v1

    const/4 v10, 0x0

    iput v10, v9, Landroidx/fragment/app/Fragment;->mState:I

    goto :goto_10

    .line 1040
    :cond_41
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 1041
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 1042
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 1043
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v9, :cond_9

    .line 1044
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/Fragment;

    move-object v7, v9

    .line 1045
    move-object v9, v7

    if-eqz v9, :cond_9

    move-object v9, v7

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getRetainInstance()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1049
    move-object v9, v1

    move-object v10, v7

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    goto/16 :goto_3

    .line 765
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 929
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .locals 6

    .prologue
    .line 2593
    move-object v0, p0

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2594
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    .line 2595
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    .line 2596
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 2597
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    move-object v3, v4

    .line 2598
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 2599
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->noteStateNotSaved()V

    .line 2596
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2602
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 18
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 3156
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v11, "fragment"

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 3157
    const/4 v11, 0x0

    move-object v0, v11

    .line 3243
    :goto_0
    return-object v0

    .line 3160
    :cond_0
    move-object v11, v4

    const/4 v12, 0x0

    const-string v13, "class"

    invoke-interface {v11, v12, v13}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 3161
    move-object v11, v3

    move-object v12, v4

    sget-object v13, Landroidx/fragment/app/FragmentManagerImpl$FragmentTag;->Fragment:[I

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    move-object v6, v11

    .line 3162
    move-object v11, v5

    if-nez v11, :cond_1

    .line 3163
    move-object v11, v6

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 3165
    :cond_1
    move-object v11, v6

    const/4 v12, 0x1

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    move v7, v11

    .line 3166
    move-object v11, v6

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 3167
    move-object v11, v6

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 3169
    move-object v11, v5

    if-eqz v11, :cond_2

    move-object v11, v3

    invoke-virtual {v11}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    move-object v12, v5

    invoke-static {v11, v12}, Landroidx/fragment/app/FragmentFactory;->isFragmentClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 3172
    :cond_2
    const/4 v11, 0x0

    move-object v0, v11

    goto :goto_0

    .line 3175
    :cond_3
    move-object v11, v1

    if-eqz v11, :cond_4

    move-object v11, v1

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v11

    :goto_1
    move v9, v11

    .line 3176
    move v11, v9

    const/4 v12, -0x1

    if-ne v11, v12, :cond_5

    move v11, v7

    const/4 v12, -0x1

    if-ne v11, v12, :cond_5

    move-object v11, v8

    if-nez v11, :cond_5

    .line 3177
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v4

    invoke-interface {v14}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 3175
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 3184
    :cond_5
    move v11, v7

    const/4 v12, -0x1

    if-eq v11, v12, :cond_9

    move-object v11, v0

    move v12, v7

    invoke-virtual {v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v11

    :goto_2
    move-object v10, v11

    .line 3185
    move-object v11, v10

    if-nez v11, :cond_6

    move-object v11, v8

    if-eqz v11, :cond_6

    .line 3186
    move-object v11, v0

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v11

    move-object v10, v11

    .line 3188
    :cond_6
    move-object v11, v10

    if-nez v11, :cond_7

    move v11, v9

    const/4 v12, -0x1

    if-eq v11, v12, :cond_7

    .line 3189
    move-object v11, v0

    move v12, v9

    invoke-virtual {v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v11

    move-object v10, v11

    .line 3192
    :cond_7
    sget-boolean v11, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_8

    const-string v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onCreateView: id=0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v7

    .line 3193
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " fname="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " existing="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3192
    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 3195
    :cond_8
    move-object v11, v10

    if-nez v11, :cond_b

    .line 3196
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/fragment/app/FragmentManagerImpl;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v11

    move-object v12, v3

    invoke-virtual {v12}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    move-object v13, v5

    invoke-virtual {v11, v12, v13}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v11

    move-object v10, v11

    .line 3197
    move-object v11, v10

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 3198
    move-object v11, v10

    move v12, v7

    if-eqz v12, :cond_a

    move v12, v7

    :goto_3
    iput v12, v11, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 3199
    move-object v11, v10

    move v12, v9

    iput v12, v11, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 3200
    move-object v11, v10

    move-object v12, v8

    iput-object v12, v11, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 3201
    move-object v11, v10

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 3202
    move-object v11, v10

    move-object v12, v0

    iput-object v12, v11, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 3203
    move-object v11, v10

    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iput-object v12, v11, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3204
    move-object v11, v10

    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object v13, v4

    move-object v14, v10

    iget-object v14, v14, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v11, v12, v13, v14}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 3205
    move-object v11, v0

    move-object v12, v10

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroidx/fragment/app/FragmentManagerImpl;->addFragment(Landroidx/fragment/app/Fragment;Z)V

    .line 3227
    :goto_4
    move-object v11, v0

    iget v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v12, 0x1

    if-ge v11, v12, :cond_d

    move-object v11, v10

    iget-boolean v11, v11, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v11, :cond_d

    .line 3228
    move-object v11, v0

    move-object v12, v10

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 3233
    :goto_5
    move-object v11, v10

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v11, :cond_e

    .line 3234
    new-instance v11, Ljava/lang/IllegalStateException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Fragment "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " did not create a view."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 3184
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 3198
    :cond_a
    move v12, v9

    goto :goto_3

    .line 3207
    :cond_b
    move-object v11, v10

    iget-boolean v11, v11, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-eqz v11, :cond_c

    .line 3210
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v4

    invoke-interface {v14}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": Duplicate id 0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v7

    .line 3211
    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", tag "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", or parent id 0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v9

    .line 3212
    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " with another fragment for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 3217
    :cond_c
    move-object v11, v10

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 3218
    move-object v11, v10

    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iput-object v12, v11, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3220
    move-object v11, v10

    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object v13, v4

    move-object v14, v10

    iget-object v14, v14, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v11, v12, v13, v14}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    goto/16 :goto_4

    .line 3230
    :cond_d
    move-object v11, v0

    move-object v12, v10

    invoke-virtual {v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_5

    .line 3237
    :cond_e
    move v11, v7

    if-eqz v11, :cond_f

    .line 3238
    move-object v11, v10

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move v12, v7

    invoke-virtual {v11, v12}, Landroid/view/View;->setId(I)V

    .line 3240
    :cond_f
    move-object v11, v10

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_10

    .line 3241
    move-object v11, v10

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3243
    :cond_10
    move-object v11, v10

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v0, v11

    goto/16 :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9

    .prologue
    .line 3248
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/fragment/app/FragmentManagerImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public performPendingDeferredStart(Landroidx/fragment/app/Fragment;)V
    .locals 8

    .prologue
    .line 706
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v2, :cond_1

    .line 707
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v2, :cond_0

    .line 709
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/fragment/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 715
    :goto_0
    return-void

    .line 712
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 713
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 715
    :cond_1
    goto :goto_0
.end method

.method public popBackStack()V
    .locals 9

    .prologue
    .line 247
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Ljava/lang/String;II)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->enqueueAction(Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 248
    return-void
.end method

.method public popBackStack(II)V
    .locals 11

    .prologue
    .line 269
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    if-gez v3, :cond_0

    .line 270
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 272
    :cond_0
    move-object v3, v0

    new-instance v4, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    const/4 v7, 0x0

    move v8, v1

    move v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Ljava/lang/String;II)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->enqueueAction(Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 273
    return-void
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 258
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    new-instance v4, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    const/4 v8, -0x1

    move v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Ljava/lang/String;II)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->enqueueAction(Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 259
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 5

    .prologue
    .line 252
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/fragment/app/FragmentManagerImpl;->checkStateLoss()V

    .line 253
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/fragment/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .locals 8

    .prologue
    .line 277
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroidx/fragment/app/FragmentManagerImpl;->checkStateLoss()V

    .line 278
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v3

    .line 279
    move v3, v1

    if-gez v3, :cond_0

    .line 280
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 282
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    move v5, v1

    move v6, v2

    invoke-direct {v3, v4, v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 263
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroidx/fragment/app/FragmentManagerImpl;->checkStateLoss()V

    .line 264
    move-object v3, v0

    move-object v4, v1

    const/4 v5, -0x1

    move v6, v2

    invoke-direct {v3, v4, v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .prologue
    .line 2200
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v8, :cond_0

    .line 2201
    const/4 v8, 0x0

    move v0, v8

    .line 2251
    :goto_0
    return v0

    .line 2203
    :cond_0
    move-object v8, v3

    if-nez v8, :cond_3

    move v8, v4

    if-gez v8, :cond_3

    move v8, v5

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_3

    .line 2204
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v6, v8

    .line 2205
    move v8, v6

    if-gez v8, :cond_1

    .line 2206
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 2208
    :cond_1
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 2209
    move-object v8, v2

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 2251
    :cond_2
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 2211
    :cond_3
    const/4 v8, -0x1

    move v6, v8

    .line 2212
    move-object v8, v3

    if-nez v8, :cond_4

    move v8, v4

    if-ltz v8, :cond_b

    .line 2215
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v6, v8

    .line 2216
    :goto_1
    move v8, v6

    if-ltz v8, :cond_5

    .line 2217
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/BackStackRecord;

    move-object v7, v8

    .line 2218
    move-object v8, v3

    if-eqz v8, :cond_6

    move-object v8, v3

    move-object v9, v7

    invoke-virtual {v9}, Landroidx/fragment/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2226
    :cond_5
    :goto_2
    move v8, v6

    if-gez v8, :cond_8

    .line 2227
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 2221
    :cond_6
    move v8, v4

    if-ltz v8, :cond_7

    move v8, v4

    move-object v9, v7

    iget v9, v9, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ne v8, v9, :cond_7

    .line 2222
    goto :goto_2

    .line 2224
    :cond_7
    add-int/lit8 v6, v6, -0x1

    .line 2225
    goto :goto_1

    .line 2229
    :cond_8
    move v8, v5

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_b

    .line 2230
    add-int/lit8 v6, v6, -0x1

    .line 2232
    :goto_3
    move v8, v6

    if-ltz v8, :cond_b

    .line 2233
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/BackStackRecord;

    move-object v7, v8

    .line 2234
    move-object v8, v3

    if-eqz v8, :cond_9

    move-object v8, v3

    move-object v9, v7

    invoke-virtual {v9}, Landroidx/fragment/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    :cond_9
    move v8, v4

    if-ltz v8, :cond_b

    move v8, v4

    move-object v9, v7

    iget v9, v9, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ne v8, v9, :cond_b

    .line 2236
    :cond_a
    add-int/lit8 v6, v6, -0x1

    .line 2237
    goto :goto_3

    .line 2243
    :cond_b
    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_c

    .line 2244
    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    .line 2246
    :cond_c
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v7, v8

    :goto_4
    move v8, v7

    move v9, v6

    if-le v8, v9, :cond_2

    .line 2247
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 2248
    move-object v8, v2

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 2246
    add-int/lit8 v7, v7, -0x1

    goto :goto_4
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 10

    .prologue
    .line 349
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v3

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v5, v0

    if-eq v4, v5, :cond_0

    .line 350
    move-object v4, v0

    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fragment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not currently in the FragmentManager"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 353
    :cond_0
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .locals 9
    .param p1    # Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2861
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;-><init>(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 2862
    return-void
.end method

.method public removeFragment(Landroidx/fragment/app/Fragment;)V
    .locals 9

    .prologue
    .line 1399
    move-object v0, p0

    move-object v1, p1

    sget-boolean v5, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nesting="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    iget v7, v7, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1400
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    :goto_0
    move v2, v5

    .line 1401
    move-object v5, v1

    iget-boolean v5, v5, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v5, :cond_1

    move v5, v2

    if-eqz v5, :cond_3

    .line 1402
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    monitor-enter v5

    .line 1403
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 1404
    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1406
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1408
    :cond_2
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 1409
    move-object v5, v1

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 1411
    :cond_3
    return-void

    .line 1400
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 1404
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 4

    .prologue
    .line 342
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 343
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 345
    :cond_0
    return-void
.end method

.method removeRetainedFragment(Landroidx/fragment/app/Fragment;)V
    .locals 7
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 406
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 407
    sget-boolean v3, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 408
    const-string v3, "FragmentManager"

    const-string v4, "Ignoring removeRetainedFragment as the state is already saved"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManagerViewModel;->removeRetainedFragment(Landroidx/fragment/app/Fragment;)Z

    move-result v3

    move v2, v3

    .line 413
    move v3, v2

    if-eqz v3, :cond_2

    sget-boolean v3, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 414
    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating retained Fragments: Removed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 416
    :cond_2
    goto :goto_0
.end method

.method reportBackStackChanged()V
    .locals 4

    .prologue
    .line 2183
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 2184
    const/4 v2, 0x0

    move v1, v2

    :goto_0
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2185
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v2}, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 2184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2188
    :cond_0
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Landroidx/fragment/app/FragmentManagerNonConfig;)V
    .locals 8

    .prologue
    .line 2430
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    instance-of v3, v3, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v3, :cond_0

    .line 2431
    move-object v3, v0

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "You must use restoreSaveState when your FragmentHostCallback implements ViewModelStoreOwner"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2434
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManagerViewModel;->restoreFromSnapshot(Landroidx/fragment/app/FragmentManagerNonConfig;)V

    .line 2435
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManagerImpl;->restoreSaveState(Landroid/os/Parcelable;)V

    .line 2436
    return-void
.end method

.method restoreSaveState(Landroid/os/Parcelable;)V
    .locals 16

    .prologue
    .line 2440
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v9, v1

    if-nez v9, :cond_0

    .line 2547
    :goto_0
    return-void

    .line 2441
    :cond_0
    move-object v9, v1

    check-cast v9, Landroidx/fragment/app/FragmentManagerState;

    move-object v2, v9

    .line 2442
    move-object v9, v2

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    if-nez v9, :cond_1

    goto :goto_0

    .line 2446
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v9}, Landroidx/fragment/app/FragmentManagerViewModel;->getRetainedFragments()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v3, v9

    :goto_1
    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/Fragment;

    move-object v4, v9

    .line 2447
    sget-boolean v9, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restoreSaveState: re-attaching retained "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 2448
    :cond_2
    const/4 v9, 0x0

    move-object v5, v9

    .line 2449
    move-object v9, v2

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v6, v9

    :goto_2
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/FragmentState;

    move-object v7, v9

    .line 2450
    move-object v9, v7

    iget-object v9, v9, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    move-object v10, v4

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2451
    move-object v9, v7

    move-object v5, v9

    .line 2455
    :cond_3
    move-object v9, v5

    if-nez v9, :cond_6

    .line 2456
    sget-boolean v9, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_4

    .line 2457
    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Discarding retained Fragment "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " that was not found in the set of active Fragments "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 2463
    :cond_4
    move-object v9, v0

    move-object v10, v4

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 2464
    move-object v9, v4

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 2465
    move-object v9, v0

    move-object v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 2466
    goto/16 :goto_1

    .line 2454
    :cond_5
    goto :goto_2

    .line 2468
    :cond_6
    move-object v9, v5

    move-object v10, v4

    iput-object v10, v9, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    .line 2469
    move-object v9, v4

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2470
    move-object v9, v4

    const/4 v10, 0x0

    iput v10, v9, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 2471
    move-object v9, v4

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 2472
    move-object v9, v4

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 2473
    move-object v9, v4

    move-object v10, v4

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz v10, :cond_8

    move-object v10, v4

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    :goto_3
    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 2474
    move-object v9, v4

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 2475
    move-object v9, v5

    iget-object v9, v9, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v9, :cond_7

    .line 2476
    move-object v9, v5

    iget-object v9, v9, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v10}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2477
    move-object v9, v4

    move-object v10, v5

    iget-object v10, v10, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v11, "android:view_state"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v10

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2479
    move-object v9, v4

    move-object v10, v5

    iget-object v10, v10, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2481
    :cond_7
    goto/16 :goto_1

    .line 2473
    :cond_8
    const/4 v10, 0x0

    goto :goto_3

    .line 2485
    :cond_9
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 2486
    move-object v9, v2

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v3, v9

    :goto_4
    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/FragmentState;

    move-object v4, v9

    .line 2487
    move-object v9, v4

    if-eqz v9, :cond_b

    .line 2488
    move-object v9, v4

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v10}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    move-object v11, v0

    .line 2489
    invoke-virtual {v11}, Landroidx/fragment/app/FragmentManagerImpl;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v11

    .line 2488
    invoke-virtual {v9, v10, v11}, Landroidx/fragment/app/FragmentState;->instantiate(Ljava/lang/ClassLoader;Landroidx/fragment/app/FragmentFactory;)Landroidx/fragment/app/Fragment;

    move-result-object v9

    move-object v5, v9

    .line 2490
    move-object v9, v5

    move-object v10, v0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 2491
    sget-boolean v9, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_a

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restoreSaveState: active ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v5

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 2492
    :cond_a
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    move-object v10, v5

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    move-object v11, v5

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 2496
    move-object v9, v4

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    .line 2498
    :cond_b
    goto :goto_4

    .line 2501
    :cond_c
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 2502
    move-object v9, v2

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerState;->mAdded:Ljava/util/ArrayList;

    if-eqz v9, :cond_10

    .line 2503
    move-object v9, v2

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerState;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v3, v9

    :goto_5
    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v4, v9

    .line 2504
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/Fragment;

    move-object v5, v9

    .line 2505
    move-object v9, v5

    if-nez v9, :cond_d

    .line 2506
    move-object v9, v0

    new-instance v10, Ljava/lang/IllegalStateException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No instantiated fragment for ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2509
    :cond_d
    move-object v9, v5

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 2510
    sget-boolean v9, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_e

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restoreSaveState: added ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 2511
    :cond_e
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 2512
    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Already added "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2514
    :cond_f
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v6, v10

    monitor-enter v9

    .line 2515
    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 2516
    move-object v9, v6

    monitor-exit v9

    .line 2517
    goto/16 :goto_5

    .line 2516
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v6

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v8

    throw v9

    .line 2521
    :cond_10
    move-object v9, v2

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    if-eqz v9, :cond_15

    .line 2522
    move-object v9, v0

    new-instance v10, Ljava/util/ArrayList;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v2

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    array-length v12, v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v9, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2523
    const/4 v9, 0x0

    move v3, v9

    :goto_6
    move v9, v3

    move-object v10, v2

    iget-object v10, v10, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    array-length v10, v10

    if-ge v9, v10, :cond_13

    .line 2524
    move-object v9, v2

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    move v10, v3

    aget-object v9, v9, v10

    move-object v10, v0

    invoke-virtual {v9, v10}, Landroidx/fragment/app/BackStackState;->instantiate(Landroidx/fragment/app/FragmentManagerImpl;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v9

    move-object v4, v9

    .line 2525
    sget-boolean v9, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_11

    .line 2526
    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restoreAllState: back stack #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v4

    iget v11, v11, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 2528
    new-instance v9, Landroidx/core/util/LogWriter;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string v11, "FragmentManager"

    invoke-direct {v10, v11}, Landroidx/core/util/LogWriter;-><init>(Ljava/lang/String;)V

    move-object v5, v9

    .line 2529
    new-instance v9, Ljava/io/PrintWriter;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v5

    invoke-direct {v10, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v6, v9

    .line 2530
    move-object v9, v4

    const-string v10, "  "

    move-object v11, v6

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 2531
    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/PrintWriter;->close()V

    .line 2533
    :cond_11
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 2534
    move-object v9, v4

    iget v9, v9, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ltz v9, :cond_12

    .line 2535
    move-object v9, v0

    move-object v10, v4

    iget v10, v10, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    move-object v11, v4

    invoke-virtual {v9, v10, v11}, Landroidx/fragment/app/FragmentManagerImpl;->setBackStackIndex(ILandroidx/fragment/app/BackStackRecord;)V

    .line 2523
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 2542
    :cond_13
    :goto_7
    move-object v9, v2

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    if-eqz v9, :cond_14

    .line 2543
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    move-object v11, v2

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/Fragment;

    iput-object v10, v9, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 2544
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    invoke-direct {v9, v10}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    .line 2546
    :cond_14
    move-object v9, v0

    move-object v10, v2

    iget v10, v10, Landroidx/fragment/app/FragmentManagerState;->mNextFragmentIndex:I

    iput v10, v9, Landroidx/fragment/app/FragmentManagerImpl;->mNextFragmentIndex:I

    .line 2547
    goto/16 :goto_0

    .line 2539
    :cond_15
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    goto :goto_7
.end method

.method retainNonConfig()Landroidx/fragment/app/FragmentManagerNonConfig;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2260
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    instance-of v1, v1, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v1, :cond_0

    .line 2261
    move-object v1, v0

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "You cannot use retainNonConfig when your FragmentHostCallback implements ViewModelStoreOwner."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2264
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerViewModel;->getSnapshot()Landroidx/fragment/app/FragmentManagerNonConfig;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method saveAllState()Landroid/os/Parcelable;
    .locals 15

    .prologue
    .line 2320
    move-object v0, p0

    move-object v8, v0

    invoke-direct {v8}, Landroidx/fragment/app/FragmentManagerImpl;->forcePostponedTransactions()V

    .line 2321
    move-object v8, v0

    invoke-direct {v8}, Landroidx/fragment/app/FragmentManagerImpl;->endAnimatingAwayFragments()V

    .line 2322
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v8

    .line 2324
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2326
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2327
    const/4 v8, 0x0

    move-object v0, v8

    .line 2426
    :goto_0
    return-object v0

    .line 2331
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    move v1, v8

    .line 2332
    new-instance v8, Ljava/util/ArrayList;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move v10, v1

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v8

    .line 2333
    const/4 v8, 0x0

    move v3, v8

    .line 2334
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    :goto_1
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/Fragment;

    move-object v5, v8

    .line 2335
    move-object v8, v5

    if-eqz v8, :cond_5

    .line 2336
    move-object v8, v5

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v9, v0

    if-eq v8, v9, :cond_1

    .line 2337
    move-object v8, v0

    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failure saving state: active "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " was removed from the FragmentManager"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2342
    :cond_1
    const/4 v8, 0x1

    move v3, v8

    .line 2344
    new-instance v8, Landroidx/fragment/app/FragmentState;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v5

    invoke-direct {v9, v10}, Landroidx/fragment/app/FragmentState;-><init>(Landroidx/fragment/app/Fragment;)V

    move-object v6, v8

    .line 2345
    move-object v8, v2

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 2347
    move-object v8, v5

    iget v8, v8, Landroidx/fragment/app/Fragment;->mState:I

    if-lez v8, :cond_6

    move-object v8, v6

    iget-object v8, v8, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v8, :cond_6

    .line 2348
    move-object v8, v6

    move-object v9, v0

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroidx/fragment/app/FragmentManagerImpl;->saveFragmentBasicState(Landroidx/fragment/app/Fragment;)Landroid/os/Bundle;

    move-result-object v9

    iput-object v9, v8, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2350
    move-object v8, v5

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 2351
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    move-object v9, v5

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/Fragment;

    move-object v7, v8

    .line 2352
    move-object v8, v7

    if-nez v8, :cond_2

    .line 2353
    move-object v8, v0

    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failure saving state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has target not in fragment manager: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v5

    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2358
    :cond_2
    move-object v8, v6

    iget-object v8, v8, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v8, :cond_3

    .line 2359
    move-object v8, v6

    new-instance v9, Landroid/os/Bundle;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iput-object v9, v8, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2361
    :cond_3
    move-object v8, v0

    move-object v9, v6

    iget-object v9, v9, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v10, "android:target_state"

    move-object v11, v7

    invoke-virtual {v8, v9, v10, v11}, Landroidx/fragment/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 2363
    move-object v8, v5

    iget v8, v8, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    if-eqz v8, :cond_4

    .line 2364
    move-object v8, v6

    iget-object v8, v8, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v9, "android:target_req_state"

    move-object v10, v5

    iget v10, v10, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2374
    :cond_4
    :goto_2
    sget-boolean v8, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_5

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saved state of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    iget-object v10, v10, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 2377
    :cond_5
    goto/16 :goto_1

    .line 2371
    :cond_6
    move-object v8, v6

    move-object v9, v5

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v9, v8, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_2

    .line 2379
    :cond_7
    move v8, v3

    if-nez v8, :cond_9

    .line 2380
    sget-boolean v8, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_8

    const-string v8, "FragmentManager"

    const-string v9, "saveAllState: no fragments!"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 2381
    :cond_8
    const/4 v8, 0x0

    move-object v0, v8

    goto/16 :goto_0

    .line 2384
    :cond_9
    const/4 v8, 0x0

    move-object v4, v8

    .line 2385
    const/4 v8, 0x0

    move-object v5, v8

    .line 2388
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v1, v8

    .line 2389
    move v8, v1

    if-lez v8, :cond_c

    .line 2390
    new-instance v8, Ljava/util/ArrayList;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move v10, v1

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v8

    .line 2391
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    :goto_3
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/Fragment;

    move-object v7, v8

    .line 2392
    move-object v8, v4

    move-object v9, v7

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 2393
    move-object v8, v7

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v9, v0

    if-eq v8, v9, :cond_a

    .line 2394
    move-object v8, v0

    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failure saving state: active "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " was removed from the FragmentManager"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2398
    :cond_a
    sget-boolean v8, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_b

    .line 2399
    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveAllState: adding fragment ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v7

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 2402
    :cond_b
    goto :goto_3

    .line 2406
    :cond_c
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v8, :cond_e

    .line 2407
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v1, v8

    .line 2408
    move v8, v1

    if-lez v8, :cond_e

    .line 2409
    move v8, v1

    new-array v8, v8, [Landroidx/fragment/app/BackStackState;

    move-object v5, v8

    .line 2410
    const/4 v8, 0x0

    move v6, v8

    :goto_4
    move v8, v6

    move v9, v1

    if-ge v8, v9, :cond_e

    .line 2411
    move-object v8, v5

    move v9, v6

    new-instance v10, Landroidx/fragment/app/BackStackState;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v13, v6

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v11, v12}, Landroidx/fragment/app/BackStackState;-><init>(Landroidx/fragment/app/BackStackRecord;)V

    aput-object v10, v8, v9

    .line 2412
    sget-boolean v8, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_d

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveAllState: adding back stack #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v11, v6

    .line 2413
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2412
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 2410
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 2418
    :cond_e
    new-instance v8, Landroidx/fragment/app/FragmentManagerState;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Landroidx/fragment/app/FragmentManagerState;-><init>()V

    move-object v6, v8

    .line 2419
    move-object v8, v6

    move-object v9, v2

    iput-object v9, v8, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    .line 2420
    move-object v8, v6

    move-object v9, v4

    iput-object v9, v8, Landroidx/fragment/app/FragmentManagerState;->mAdded:Ljava/util/ArrayList;

    .line 2421
    move-object v8, v6

    move-object v9, v5

    iput-object v9, v8, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    .line 2422
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    if-eqz v8, :cond_f

    .line 2423
    move-object v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v9, v8, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    .line 2425
    :cond_f
    move-object v8, v6

    move-object v9, v0

    iget v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iput v9, v8, Landroidx/fragment/app/FragmentManagerState;->mNextFragmentIndex:I

    .line 2426
    move-object v8, v6

    move-object v0, v8

    goto/16 :goto_0
.end method

.method saveFragmentBasicState(Landroidx/fragment/app/Fragment;)Landroid/os/Bundle;
    .locals 8

    .prologue
    .line 2284
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move-object v2, v3

    .line 2286
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v3, :cond_0

    .line 2287
    move-object v3, v0

    new-instance v4, Landroid/os/Bundle;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v3, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2289
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 2290
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 2291
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2292
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    move-object v2, v3

    .line 2293
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2296
    :cond_1
    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 2297
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManagerImpl;->saveFragmentViewState(Landroidx/fragment/app/Fragment;)V

    .line 2299
    :cond_2
    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v3, :cond_4

    .line 2300
    move-object v3, v2

    if-nez v3, :cond_3

    .line 2301
    new-instance v3, Landroid/os/Bundle;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .line 2303
    :cond_3
    move-object v3, v2

    const-string v4, "android:view_state"

    move-object v5, v1

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2306
    :cond_4
    move-object v3, v1

    iget-boolean v3, v3, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    if-nez v3, :cond_6

    .line 2307
    move-object v3, v2

    if-nez v3, :cond_5

    .line 2308
    new-instance v3, Landroid/os/Bundle;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .line 2311
    :cond_5
    move-object v3, v2

    const-string v4, "android:user_visible_hint"

    move-object v5, v1

    iget-boolean v5, v5, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2314
    :cond_6
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public saveFragmentInstanceState(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;
    .locals 9
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 441
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v4, v0

    if-eq v3, v4, :cond_0

    .line 442
    move-object v3, v0

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not currently in the FragmentManager"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 445
    :cond_0
    move-object v3, v1

    iget v3, v3, Landroidx/fragment/app/Fragment;->mState:I

    if-lez v3, :cond_2

    .line 446
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManagerImpl;->saveFragmentBasicState(Landroidx/fragment/app/Fragment;)Landroid/os/Bundle;

    move-result-object v3

    move-object v2, v3

    .line 447
    move-object v3, v2

    if-eqz v3, :cond_1

    new-instance v3, Landroidx/fragment/app/Fragment$SavedState;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    invoke-direct {v4, v5}, Landroidx/fragment/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    :goto_0
    move-object v0, v3

    .line 449
    :goto_1
    return-object v0

    .line 447
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 449
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method saveFragmentViewState(Landroidx/fragment/app/Fragment;)V
    .locals 6

    .prologue
    .line 2268
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 2281
    :goto_0
    return-void

    .line 2271
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v2, :cond_2

    .line 2272
    move-object v2, v0

    new-instance v3, Landroid/util/SparseArray;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v2, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 2276
    :goto_1
    move-object v2, v1

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2277
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2278
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v3, v2, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2279
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 2281
    :cond_1
    goto :goto_0

    .line 2274
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    goto :goto_1
.end method

.method scheduleCommit()V
    .locals 8

    .prologue
    .line 1584
    move-object v0, p0

    move-object v5, v0

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v1, v6

    monitor-enter v5

    .line 1585
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    .line 1586
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    move v2, v5

    .line 1587
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    :goto_1
    move v3, v5

    .line 1588
    move v5, v2

    if-nez v5, :cond_0

    move v5, v3

    if-eqz v5, :cond_1

    .line 1589
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1590
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    .line 1591
    move-object v5, v0

    invoke-direct {v5}, Landroidx/fragment/app/FragmentManagerImpl;->updateOnBackPressedCallbackEnabled()V

    .line 1593
    :cond_1
    move-object v5, v1

    monitor-exit v5

    .line 1594
    return-void

    .line 1586
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 1587
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1593
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public setBackStackIndex(ILandroidx/fragment/app/BackStackRecord;)V
    .locals 10

    .prologue
    .line 1617
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, v0

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v3, v7

    monitor-enter v6

    .line 1618
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 1619
    move-object v6, v0

    new-instance v7, Ljava/util/ArrayList;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1621
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    .line 1622
    move v6, v1

    move v7, v4

    if-ge v6, v7, :cond_2

    .line 1623
    sget-boolean v6, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting back stack index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1624
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    move v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1638
    :goto_0
    move-object v6, v3

    monitor-exit v6

    .line 1639
    return-void

    .line 1626
    :cond_2
    :goto_1
    move v6, v4

    move v7, v1

    if-ge v6, v7, :cond_5

    .line 1627
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 1628
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v6, :cond_3

    .line 1629
    move-object v6, v0

    new-instance v7, Ljava/util/ArrayList;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1631
    :cond_3
    sget-boolean v6, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding available back stack index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1632
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    move v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 1633
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1635
    :cond_5
    sget-boolean v6, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding back stack index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1636
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    goto/16 :goto_0

    .line 1638
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method public setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 8

    .prologue
    .line 2825
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    move-object v4, v1

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v1

    if-ne v3, v4, :cond_0

    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 2826
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    move-object v4, v0

    if-eq v3, v4, :cond_1

    .line 2827
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not an active fragment of FragmentManager "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2830
    :cond_1
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 2831
    return-void
.end method

.method public setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V
    .locals 8

    .prologue
    .line 2795
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    move-object v4, v1

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v1

    if-ne v3, v4, :cond_0

    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 2796
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    move-object v4, v0

    if-eq v3, v4, :cond_1

    .line 2797
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not an active fragment of FragmentManager "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2800
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    move-object v2, v3

    .line 2801
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 2802
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    .line 2803
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    invoke-direct {v3, v4}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    .line 2804
    return-void
.end method

.method public showFragment(Landroidx/fragment/app/Fragment;)V
    .locals 6

    .prologue
    .line 1436
    move-object v0, p0

    move-object v1, p1

    sget-boolean v2, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1437
    :cond_0
    move-object v2, v1

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v2, :cond_1

    .line 1438
    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1441
    move-object v2, v1

    move-object v3, v1

    iget-boolean v3, v3, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1443
    :cond_1
    return-void

    .line 1441
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method startPendingDeferredFragments()V
    .locals 5

    .prologue
    .line 1323
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    move-object v2, v3

    .line 1324
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1325
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManagerImpl;->performPendingDeferredStart(Landroidx/fragment/app/Fragment;)V

    .line 1327
    :cond_0
    goto :goto_0

    .line 1328
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 459
    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 460
    move-object v2, v1

    const-string v3, "FragmentManager{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 461
    move-object v2, v1

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 462
    move-object v2, v1

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 463
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    .line 464
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 468
    :goto_0
    move-object v2, v1

    const-string v3, "}}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 469
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0

    .line 466
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method public unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V
    .locals 9
    .param p1    # Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2866
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v2, v7

    monitor-enter v6

    .line 2867
    const/4 v6, 0x0

    move v3, v6

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    move v4, v6

    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_0

    .line 2868
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v7, v1

    if-ne v6, v7, :cond_1

    .line 2869
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    .line 2873
    :cond_0
    move-object v6, v2

    monitor-exit v6

    .line 2874
    return-void

    .line 2867
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2873
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method
