.class public Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;
.implements Landroidx/core/view/NestedScrollingParent2;
.implements Landroidx/core/view/NestedScrollingChild3;
.implements Landroidx/core/view/NestedScrollingChild2;
.implements Landroidx/core/view/NestedScrollingParent;
.implements Landroidx/core/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;,
        Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;,
        Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$SavedState;
    }
.end annotation


# static fields
.field private static final ALPHA_ANIMATION_DURATION:I = 0x12c

.field private static final ANIMATE_TO_START_DURATION:I = 0xc8

.field private static final ANIMATE_TO_TRIGGER_DURATION:I = 0xc8

.field static final CIRCLE_DIAMETER:I = 0x28
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CIRCLE_DIAMETER_LARGE:I = 0x38
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final DECELERATE_INTERPOLATION_FACTOR:F = 2.0f

.field public static final DEFAULT:I = 0x1

.field private static final DEFAULT_CIRCLE_TARGET:I = 0x40

.field public static final DEFAULT_SLINGSHOT_DISTANCE:I = -0x1

.field private static final DRAG_RATE:F = 0.5f

.field private static final INVALID_POINTER:I = -0x1

.field public static final LARGE:I = 0x0

.field private static final LAYOUT_ATTRS:[I

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_PROGRESS_ANGLE:F = 0.8f

.field private static final SCALE_DOWN_DURATION:I = 0x96

.field private static final STARTING_PROGRESS_ALPHA:I = 0x4c


# instance fields
.field private mActivePointerId:I

.field private mAlphaMaxAnimation:Landroid/view/animation/Animation;

.field private mAlphaStartAnimation:Landroid/view/animation/Animation;

.field private final mAnimateToCorrectPosition:Landroid/view/animation/Animation;

.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field private mChildScrollUpCallback:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

.field private mCircleDiameter:I

.field mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

.field private mCircleViewIndex:I

.field mCurrentTargetOffsetTop:I

.field mCustomSlingshotDistance:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mEnableLegacyRequestDisallowInterceptTouch:Z

.field protected mFrom:I

.field private mInitialDownY:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field mListener:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private mNestedScrollInProgress:Z

.field private final mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private final mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private final mNestedScrollingV2ConsumedCompat:[I

.field mNotify:Z

.field protected mOriginalOffsetTop:I

.field private final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I

.field mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

.field private mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

.field mRefreshing:Z

.field private mReturningToStart:Z

.field mScale:Z

.field private mScaleAnimation:Landroid/view/animation/Animation;

.field private mScaleDownAnimation:Landroid/view/animation/Animation;

.field private mScaleDownToStartAnimation:Landroid/view/animation/Animation;

.field mSpinnerOffsetEnd:I

.field mStartingScale:F

.field private mTarget:Landroid/view/View;

.field private mTotalDragDistance:F

.field private mTotalUnconsumed:F

.field private mTouchSlop:I

.field mUsingCustomStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 91
    const-class v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    .line 149
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x101000e

    aput v3, v1, v2

    sput-object v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 403
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 404
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 413
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 119
    move-object v5, v0

    const/high16 v6, -0x40800000    # -1.0f

    iput v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 127
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mParentScrollConsumed:[I

    .line 128
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    .line 132
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingV2ConsumedCompat:[I

    .line 141
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 154
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 190
    move-object v5, v0

    new-instance v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$1;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$1;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    iput-object v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1336
    move-object v5, v0

    new-instance v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    iput-object v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 1358
    move-object v5, v0

    new-instance v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$7;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$7;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    iput-object v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 415
    move-object v5, v0

    move-object v6, v1

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTouchSlop:I

    .line 417
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    .line 420
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setWillNotDraw(Z)V

    .line 421
    move-object v5, v0

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const/high16 v8, 0x40000000    # 2.0f

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 423
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    move-object v3, v5

    .line 424
    move-object v5, v0

    const/high16 v6, 0x42200000    # 40.0f

    move-object v7, v3

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    .line 426
    move-object v5, v0

    invoke-direct {v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->createProgressView()V

    .line 427
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setChildrenDrawingOrderEnabled(Z)V

    .line 429
    move-object v5, v0

    const/high16 v6, 0x42800000    # 64.0f

    move-object v7, v3

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 430
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    int-to-float v6, v6

    iput v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 431
    move-object v5, v0

    new-instance v6, Landroidx/core/view/NestedScrollingParentHelper;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 433
    move-object v5, v0

    new-instance v6, Landroidx/core/view/NestedScrollingChildHelper;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 434
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 436
    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    neg-int v7, v7

    move-object v9, v6

    move v10, v7

    move v6, v10

    move-object v7, v9

    move v8, v10

    iput v8, v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iput v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 437
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->moveToStart(F)V

    .line 439
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v4, v5

    .line 440
    move-object v5, v0

    move-object v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 441
    move-object v5, v4

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 442
    return-void
.end method

.method private animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 6

    .prologue
    .line 1308
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mFrom:I

    .line 1309
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->reset()V

    .line 1310
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1311
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1312
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1313
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1315
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 1316
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1317
    return-void
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 6

    .prologue
    .line 1320
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v3, :cond_0

    .line 1322
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1334
    :goto_0
    return-void

    .line 1324
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mFrom:I

    .line 1325
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->reset()V

    .line 1326
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1327
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1328
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 1329
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1331
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 1332
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private createProgressView()V
    .locals 6

    .prologue
    .line 461
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 462
    move-object v1, v0

    new-instance v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 463
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStyle(I)V

    .line 464
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 465
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setVisibility(I)V

    .line 466
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->addView(Landroid/view/View;)V

    .line 467
    return-void
.end method

.method private ensureTarget()V
    .locals 5

    .prologue
    .line 650
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v3, :cond_0

    .line 651
    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 652
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 653
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 654
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 659
    :cond_0
    return-void

    .line 651
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private finishSpinner(F)V
    .locals 7

    .prologue
    .line 1184
    move-object v0, p0

    move v1, p1

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 1185
    move-object v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    .line 1214
    :goto_0
    return-void

    .line 1188
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 1189
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStartEndTrim(FF)V

    .line 1190
    const/4 v3, 0x0

    move-object v2, v3

    .line 1191
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    if-nez v3, :cond_1

    .line 1192
    new-instance v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$5;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$5;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    move-object v2, v3

    .line 1211
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1212
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setArrowEnabled(Z)V

    goto :goto_0
.end method

.method private isAnimationRunning(Landroid/view/animation/Animation;)Z
    .locals 3

    .prologue
    .line 1128
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private moveSpinner(F)V
    .locals 22

    .prologue
    .line 1132
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setArrowEnabled(Z)V

    .line 1133
    move/from16 v16, v4

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v5, v16

    .line 1135
    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v17, v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(FF)F

    move-result v16

    move/from16 v6, v16

    .line 1136
    move/from16 v16, v6

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3fd999999999999aL    # 0.4

    sub-double v16, v16, v18

    const-wide/16 v18, 0x0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40a00000    # 5.0f

    mul-float v16, v16, v17

    const/high16 v17, 0x40400000    # 3.0f

    div-float v16, v16, v17

    move/from16 v7, v16

    .line 1137
    move/from16 v16, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    move/from16 v8, v16

    .line 1138
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCustomSlingshotDistance:I

    move/from16 v16, v0

    if-lez v16, :cond_4

    .line 1139
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCustomSlingshotDistance:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    .line 1142
    :goto_0
    move/from16 v9, v16

    .line 1143
    const/16 v16, 0x0

    move/from16 v17, v8

    move/from16 v18, v9

    const/high16 v19, 0x40000000    # 2.0f

    mul-float v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v17

    move/from16 v18, v9

    div-float v17, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v16

    move/from16 v10, v16

    .line 1145
    move/from16 v16, v10

    const/high16 v17, 0x40800000    # 4.0f

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v18, v10

    const/high16 v19, 0x40800000    # 4.0f

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    sub-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    mul-float v16, v16, v17

    move/from16 v11, v16

    .line 1147
    move/from16 v16, v9

    move/from16 v17, v11

    mul-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    mul-float v16, v16, v17

    move/from16 v12, v16

    .line 1149
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    move/from16 v16, v0

    move/from16 v17, v9

    move/from16 v18, v6

    mul-float v17, v17, v18

    move/from16 v18, v12

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v13, v16

    .line 1151
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getVisibility()I

    move-result v16

    if-eqz v16, :cond_0

    .line 1152
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setVisibility(I)V

    .line 1154
    :cond_0
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 1155
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v16 .. v17}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setScaleX(F)V

    .line 1156
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v16 .. v17}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setScaleY(F)V

    .line 1159
    :cond_1
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 1160
    move-object/from16 v16, v3

    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v18, v4

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    move/from16 v19, v0

    div-float v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 1162
    :cond_2
    move/from16 v16, v4

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    move/from16 v17, v0

    cmpg-float v16, v16, v17

    if-gez v16, :cond_6

    .line 1163
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->getAlpha()I

    move-result v16

    const/16 v17, 0x4c

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_3

    move-object/from16 v16, v3

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    move-object/from16 v17, v0

    .line 1164
    invoke-direct/range {v16 .. v17}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 1166
    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v16}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startProgressAlphaStartAnimation()V

    .line 1174
    :cond_3
    :goto_1
    move/from16 v16, v7

    const v17, 0x3f4ccccd    # 0.8f

    mul-float v16, v16, v17

    move/from16 v14, v16

    .line 1175
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x3f4ccccd    # 0.8f

    move/from16 v19, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v18

    invoke-virtual/range {v16 .. v18}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStartEndTrim(FF)V

    .line 1176
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v18, v7

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setArrowScale(F)V

    .line 1178
    const/high16 v16, -0x41800000    # -0.25f

    const v17, 0x3ecccccd    # 0.4f

    move/from16 v18, v7

    mul-float v17, v17, v18

    add-float v16, v16, v17

    move/from16 v17, v11

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v17, v17, v18

    add-float v16, v16, v17

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v16, v16, v17

    move/from16 v15, v16

    .line 1179
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    move-object/from16 v16, v0

    move/from16 v17, v15

    invoke-virtual/range {v16 .. v17}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setProgressRotation(F)V

    .line 1180
    move-object/from16 v16, v3

    move/from16 v17, v13

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 1181
    return-void

    .line 1140
    :cond_4
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 1141
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    move/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    .line 1142
    :goto_2
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    move/from16 v16, v0

    goto :goto_2

    .line 1169
    :cond_6
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->getAlpha()I

    move-result v16

    const/16 v17, 0xff

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    move-object/from16 v16, v3

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 1171
    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v16}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startProgressAlphaMaxAnimation()V

    goto/16 :goto_1
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 8

    .prologue
    .line 1392
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    move v2, v5

    .line 1393
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    move v3, v5

    .line 1394
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    if-ne v5, v6, :cond_0

    .line 1397
    move v5, v2

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 1398
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 1400
    :cond_0
    return-void

    .line 1397
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setColorViewAlpha(I)V
    .locals 4

    .prologue
    .line 298
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 299
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 300
    return-void
.end method

.method private setRefreshing(ZZ)V
    .locals 6

    .prologue
    .line 528
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 529
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNotify:Z

    .line 530
    move-object v3, v0

    invoke-direct {v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 531
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 532
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eqz v3, :cond_1

    .line 533
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    move-object v5, v0

    iget-object v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {v3, v4, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private startAlphaAnimation(II)Landroid/view/animation/Animation;
    .locals 11

    .prologue
    .line 562
    move-object v1, p0

    move v2, p1

    move v3, p2

    new-instance v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$4;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$4;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;II)V

    move-object v4, v5

    .line 569
    move-object v5, v4

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 571
    move-object v5, v1

    iget-object v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 572
    move-object v5, v1

    iget-object v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v5}, Landroidx/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 573
    move-object v5, v1

    iget-object v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/swiperefreshlayout/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 574
    move-object v5, v4

    move-object v1, v5

    return-object v1
.end method

.method private startDragging(F)V
    .locals 6

    .prologue
    .line 1299
    move-object v0, p0

    move v1, p1

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mInitialDownY:F

    sub-float/2addr v3, v4

    move v2, v3

    .line 1300
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-nez v3, :cond_0

    .line 1301
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mInitialDownY:F

    move-object v5, v0

    iget v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mInitialMotionY:F

    .line 1302
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 1303
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/16 v4, 0x4c

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 1305
    :cond_0
    return-void
.end method

.method private startProgressAlphaMaxAnimation()V
    .locals 5

    .prologue
    .line 558
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->getAlpha()I

    move-result v3

    const/16 v4, 0xff

    invoke-direct {v2, v3, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    .line 559
    return-void
.end method

.method private startProgressAlphaStartAnimation()V
    .locals 5

    .prologue
    .line 554
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->getAlpha()I

    move-result v3

    const/16 v4, 0x4c

    invoke-direct {v2, v3, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    .line 555
    return-void
.end method

.method private startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 8

    .prologue
    .line 1367
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mFrom:I

    .line 1368
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getScaleX()F

    move-result v4

    iput v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mStartingScale:F

    .line 1369
    move-object v3, v0

    new-instance v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$8;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$8;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    iput-object v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    .line 1377
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1378
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1379
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1381
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 1382
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1383
    return-void
.end method

.method private startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 8

    .prologue
    .line 502
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setVisibility(I)V

    .line 503
    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 504
    move-object v3, v1

    new-instance v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    iput-object v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 510
    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    move-object v4, v1

    iget v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 511
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 512
    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 514
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 515
    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v4, v1

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 516
    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 4

    .prologue
    .line 735
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mChildScrollUpCallback:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    if-eqz v1, :cond_0

    .line 736
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mChildScrollUpCallback:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-interface {v1, v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;->canChildScrollUp(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroid/view/View;)Z

    move-result v1

    move v0, v1

    .line 741
    :goto_0
    return v0

    .line 738
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 739
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    check-cast v1, Landroid/widget/ListView;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroidx/core/widget/ListViewCompat;->canScrollList(Landroid/widget/ListView;I)Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 741
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 8

    .prologue
    .line 1119
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 6

    .prologue
    .line 1124
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 10

    .prologue
    .line 1113
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v6, v1

    move v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v5

    move v0, v5

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 11

    .prologue
    .line 1073
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move v6, v5

    if-nez v6, :cond_0

    move-object v6, v0

    move v7, v1

    move v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v0, v6

    return v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .locals 16
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1038
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move v8, v6

    if-nez v8, :cond_0

    .line 1039
    move-object v8, v0

    iget-object v8, v8, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v5

    move v14, v6

    move-object v15, v7

    invoke-virtual/range {v8 .. v15}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II[I)V

    .line 1042
    :cond_0
    return-void
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 12

    .prologue
    .line 1107
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    iget-object v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v6

    move v0, v6

    return v0
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 14

    .prologue
    .line 1066
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move v7, v6

    if-nez v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move-object v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v0, v7

    return v0

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 6

    .prologue
    .line 446
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    if-gez v3, :cond_0

    .line 447
    move v3, v2

    move v0, v3

    .line 456
    :goto_0
    return v0

    .line 448
    :cond_0
    move v3, v2

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_1

    .line 450
    move-object v3, v0

    iget v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    move v0, v3

    goto :goto_0

    .line 451
    :cond_1
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    if-lt v3, v4, :cond_2

    .line 453
    move v3, v2

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    goto :goto_0

    .line 456
    :cond_2
    move v3, v2

    move v0, v3

    goto :goto_0
.end method

.method public getNestedScrollAxes()I
    .locals 2

    .prologue
    .line 996
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v1}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getProgressCircleDiameter()I
    .locals 2

    .prologue
    .line 727
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    move v0, v1

    return v0
.end method

.method public getProgressViewEndOffset()I
    .locals 2

    .prologue
    .line 343
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    move v0, v1

    return v0
.end method

.method public getProgressViewStartOffset()I
    .locals 2

    .prologue
    .line 335
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    move v0, v1

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 2

    .prologue
    .line 1101
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v1}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 3

    .prologue
    .line 1060
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->hasNestedScrollingParent()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 2

    .prologue
    .line 1086
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v1}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isRefreshing()Z
    .locals 2

    .prologue
    .line 644
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    move v0, v1

    return v0
.end method

.method moveToStart(F)V
    .locals 7

    .prologue
    .line 1353
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mFrom:I

    move-object v5, v0

    iget v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    move-object v6, v0

    iget v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mFrom:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move v6, v1

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    move v2, v4

    .line 1354
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v5}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    move v3, v4

    .line 1355
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 1356
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 293
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 294
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->reset()V

    .line 295
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    .line 755
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    invoke-direct {v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 757
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    move v2, v5

    .line 760
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-eqz v5, :cond_0

    move v5, v2

    if-nez v5, :cond_0

    .line 761
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    .line 764
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v5, :cond_1

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v5, :cond_1

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v5, :cond_2

    .line 767
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    .line 808
    :goto_0
    return v0

    .line 770
    :cond_2
    move v5, v2

    packed-switch v5, :pswitch_data_0

    .line 808
    :goto_1
    :pswitch_0
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    move v0, v5

    goto :goto_0

    .line 772
    :pswitch_1
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    move-object v7, v0

    iget-object v7, v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v7}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 773
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 774
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 776
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    move v3, v5

    .line 777
    move v5, v3

    if-gez v5, :cond_3

    .line 778
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 780
    :cond_3
    move-object v5, v0

    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iput v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mInitialDownY:F

    .line 781
    goto :goto_1

    .line 784
    :pswitch_2
    move-object v5, v0

    iget v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 785
    sget-object v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 786
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 789
    :cond_4
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    move v3, v5

    .line 790
    move v5, v3

    if-gez v5, :cond_5

    .line 791
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 793
    :cond_5
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    move v4, v5

    .line 794
    move-object v5, v0

    move v6, v4

    invoke-direct {v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startDragging(F)V

    .line 795
    goto :goto_1

    .line 798
    :pswitch_3
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 799
    goto :goto_1

    .line 803
    :pswitch_4
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 804
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    goto :goto_1

    .line 770
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 22

    .prologue
    .line 672
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v16

    move/from16 v7, v16

    .line 673
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v16

    move/from16 v8, v16

    .line 674
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v16

    if-nez v16, :cond_0

    .line 693
    :goto_0
    return-void

    .line 677
    :cond_0
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 678
    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v16}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 680
    :cond_1
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 681
    goto :goto_0

    .line 683
    :cond_2
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v9, v16

    .line 684
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v16

    move/from16 v10, v16

    .line 685
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v16

    move/from16 v11, v16

    .line 686
    move/from16 v16, v7

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v17

    sub-int v16, v16, v17

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v12, v16

    .line 687
    move/from16 v16, v8

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v17

    sub-int v16, v16, v17

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v13, v16

    .line 688
    move-object/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v19, v10

    move/from16 v20, v12

    add-int v19, v19, v20

    move/from16 v20, v11

    move/from16 v21, v13

    add-int v20, v20, v21

    invoke-virtual/range {v16 .. v20}, Landroid/view/View;->layout(IIII)V

    .line 689
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getMeasuredWidth()I

    move-result v16

    move/from16 v14, v16

    .line 690
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getMeasuredHeight()I

    move-result v16

    move/from16 v15, v16

    .line 691
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object/from16 v16, v0

    move/from16 v17, v7

    const/16 v18, 0x2

    div-int/lit8 v17, v17, 0x2

    move/from16 v18, v14

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    move/from16 v18, v0

    move/from16 v19, v7

    const/16 v20, 0x2

    div-int/lit8 v19, v19, 0x2

    move/from16 v20, v14

    const/16 v21, 0x2

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    move/from16 v20, v0

    move/from16 v21, v15

    add-int v20, v20, v21

    invoke-virtual/range {v16 .. v20}, Landroidx/swiperefreshlayout/widget/CircleImageView;->layout(IIII)V

    .line 693
    goto/16 :goto_0
.end method

.method public onMeasure(II)V
    .locals 8

    .prologue
    .line 697
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 698
    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v4, :cond_0

    .line 699
    move-object v4, v0

    invoke-direct {v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 701
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v4, :cond_1

    .line 718
    :goto_0
    return-void

    .line 704
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    move-object v5, v0

    .line 705
    invoke-virtual {v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    .line 704
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move-object v6, v0

    .line 707
    invoke-virtual {v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    .line 706
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 704
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 708
    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v5, v0

    iget v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    const/high16 v7, 0x40000000    # 2.0f

    .line 709
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 708
    invoke-virtual {v4, v5, v6}, Landroidx/swiperefreshlayout/widget/CircleImageView;->measure(II)V

    .line 710
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 712
    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 713
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    if-ne v4, v5, :cond_3

    .line 714
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 718
    :cond_2
    goto :goto_0

    .line 712
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 9

    .prologue
    .line 1029
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v2

    move v7, v3

    move v8, v4

    invoke-virtual {v5, v6, v7, v8}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result v5

    move v0, v5

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 7

    .prologue
    .line 1023
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 13

    .prologue
    .line 966
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move v6, v3

    if-lez v6, :cond_0

    move-object v6, v0

    iget v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 967
    move v6, v3

    int-to-float v6, v6

    move-object v7, v0

    iget v7, v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 968
    move-object v6, v4

    const/4 v7, 0x1

    move-object v8, v0

    iget v8, v8, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    float-to-int v8, v8

    aput v8, v6, v7

    .line 969
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 974
    :goto_0
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {v6, v7}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->moveSpinner(F)V

    .line 981
    :cond_0
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v6, :cond_1

    move v6, v3

    if-lez v6, :cond_1

    move-object v6, v0

    iget v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    move v6, v3

    move-object v7, v4

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    .line 982
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-lez v6, :cond_1

    .line 983
    move-object v6, v0

    iget-object v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setVisibility(I)V

    .line 987
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mParentScrollConsumed:[I

    move-object v5, v6

    .line 988
    move-object v6, v0

    move v7, v2

    move-object v8, v4

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-int/2addr v7, v8

    move v8, v3

    move-object v9, v4

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-int/2addr v8, v9

    move-object v9, v5

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 989
    move-object v6, v4

    const/4 v7, 0x0

    move-object v11, v6

    move v12, v7

    move-object v6, v11

    move v7, v12

    move-object v8, v11

    move v9, v12

    aget v8, v8, v9

    move-object v9, v5

    const/4 v10, 0x0

    aget v9, v9, v10

    add-int/2addr v8, v9

    aput v8, v6, v7

    .line 990
    move-object v6, v4

    const/4 v7, 0x1

    move-object v11, v6

    move v12, v7

    move-object v6, v11

    move v7, v12

    move-object v8, v11

    move v9, v12

    aget v8, v8, v9

    move-object v9, v5

    const/4 v10, 0x1

    aget v9, v9, v10

    add-int/2addr v8, v9

    aput v8, v6, v7

    .line 992
    :cond_2
    return-void

    .line 971
    :cond_3
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    move v8, v3

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 972
    move-object v6, v4

    const/4 v7, 0x1

    move v8, v3

    aput v8, v6, v7

    goto :goto_0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 11

    .prologue
    .line 939
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move v6, v5

    if-nez v6, :cond_0

    .line 940
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onNestedPreScroll(Landroid/view/View;II[I)V

    .line 942
    :cond_0
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 14

    .prologue
    .line 1016
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingV2ConsumedCompat:[I

    invoke-virtual/range {v6 .. v13}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    .line 1018
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 15

    .prologue
    .line 931
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    move-object v14, v0

    iget-object v14, v14, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingV2ConsumedCompat:[I

    invoke-virtual/range {v7 .. v14}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    .line 933
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 23
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 856
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move v13, v7

    if-eqz v13, :cond_0

    .line 897
    :goto_0
    return-void

    .line 864
    :cond_0
    move-object v13, v8

    const/4 v14, 0x1

    aget v13, v13, v14

    move v9, v13

    .line 865
    move-object v13, v1

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    move-object/from16 v18, v0

    move/from16 v19, v7

    move-object/from16 v20, v8

    invoke-virtual/range {v13 .. v20}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->dispatchNestedScroll(IIII[II[I)V

    .line 867
    move-object v13, v8

    const/4 v14, 0x1

    aget v13, v13, v14

    move v14, v9

    sub-int/2addr v13, v14

    move v10, v13

    .line 868
    move v13, v6

    move v14, v10

    sub-int/2addr v13, v14

    move v11, v13

    .line 879
    move v13, v11

    if-nez v13, :cond_2

    .line 882
    move v13, v6

    move-object v14, v1

    iget-object v14, v14, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v13, v14

    move v12, v13

    .line 889
    :goto_1
    move v13, v12

    if-gez v13, :cond_1

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v13

    if-nez v13, :cond_1

    .line 890
    move-object v13, v1

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    iget v14, v14, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    move v15, v12

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v14, v15

    iput v14, v13, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 891
    move-object v13, v1

    move-object v14, v1

    iget v14, v14, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {v13, v14}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->moveSpinner(F)V

    .line 895
    move-object v13, v8

    const/4 v14, 0x1

    move-object/from16 v21, v13

    move/from16 v22, v14

    move-object/from16 v13, v21

    move/from16 v14, v22

    move-object/from16 v15, v21

    move/from16 v16, v22

    aget v15, v15, v16

    move/from16 v16, v11

    add-int v15, v15, v16

    aput v15, v13, v14

    .line 897
    :cond_1
    goto :goto_0

    .line 884
    :cond_2
    move v13, v11

    move v12, v13

    goto :goto_1
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 8

    .prologue
    .line 955
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 957
    move-object v4, v0

    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startNestedScroll(I)Z

    move-result v4

    .line 958
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 959
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 960
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 9

    .prologue
    .line 914
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, v4

    if-nez v5, :cond_0

    .line 915
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 917
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    .line 286
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    check-cast v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$SavedState;

    move-object v2, v3

    .line 287
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {v3, v4}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 288
    move-object v3, v0

    move-object v4, v2

    iget-boolean v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$SavedState;->mRefreshing:Z

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 289
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 280
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    move-object v1, v2

    .line 281
    new-instance v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$SavedState;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    invoke-direct {v3, v4, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$SavedState;-><init>(Landroid/os/Parcelable;Z)V

    move-object v0, v2

    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 948
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v4, :cond_0

    move v4, v3

    const/4 v5, 0x2

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    return v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 9

    .prologue
    .line 903
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, v4

    if-nez v5, :cond_0

    .line 904
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v5

    move v0, v5

    .line 906
    :goto_0
    return v0

    :cond_0
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1001
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 1002
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 1005
    move-object v2, v0

    iget v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1006
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->finishSpinner(F)V

    .line 1007
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 1010
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->stopNestedScroll()V

    .line 1011
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 923
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    if-nez v3, :cond_0

    .line 924
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 926
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    .line 1218
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    move v2, v6

    .line 1219
    const/4 v6, -0x1

    move v3, v6

    .line 1221
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-eqz v6, :cond_0

    move v6, v2

    if-nez v6, :cond_0

    .line 1222
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    .line 1225
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v6, :cond_1

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v6, :cond_1

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v6, :cond_2

    .line 1228
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    .line 1295
    :goto_0
    return v0

    .line 1231
    :cond_2
    move v6, v2

    packed-switch v6, :pswitch_data_0

    .line 1295
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 1233
    :pswitch_1
    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 1234
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 1235
    goto :goto_1

    .line 1238
    :pswitch_2
    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    move v3, v6

    .line 1239
    move v6, v3

    if-gez v6, :cond_4

    .line 1240
    sget-object v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1241
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 1244
    :cond_4
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    move v4, v6

    .line 1245
    move-object v6, v0

    move v7, v4

    invoke-direct {v6, v7}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startDragging(F)V

    .line 1247
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v6, :cond_3

    .line 1248
    move v6, v4

    move-object v7, v0

    iget v7, v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    move v5, v6

    .line 1249
    move v6, v5

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 1252
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1253
    move-object v6, v0

    move v7, v5

    invoke-direct {v6, v7}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->moveSpinner(F)V

    .line 1257
    goto :goto_1

    .line 1255
    :cond_5
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 1261
    :pswitch_3
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    move v3, v6

    .line 1262
    move v6, v3

    if-gez v6, :cond_6

    .line 1263
    sget-object v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1265
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 1267
    :cond_6
    move-object v6, v0

    move-object v7, v1

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 1268
    goto :goto_1

    .line 1272
    :pswitch_4
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1273
    goto :goto_1

    .line 1276
    :pswitch_5
    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    move v3, v6

    .line 1277
    move v6, v3

    if-gez v6, :cond_7

    .line 1278
    sget-object v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1279
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 1282
    :cond_7
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v6, :cond_8

    .line 1283
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    move v4, v6

    .line 1284
    move v6, v4

    move-object v7, v0

    iget v7, v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    move v5, v6

    .line 1285
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 1286
    move-object v6, v0

    move v7, v5

    invoke-direct {v6, v7}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->finishSpinner(F)V

    .line 1288
    :cond_8
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 1289
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 1292
    :pswitch_6
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 1231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 4

    .prologue
    .line 839
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mEnableLegacyRequestDisallowInterceptTouch:Z

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/AbsListView;

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 841
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 848
    :cond_1
    :goto_0
    return-void

    .line 847
    :cond_2
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 848
    goto :goto_0
.end method

.method reset()V
    .locals 4

    .prologue
    .line 218
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 219
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->stop()V

    .line 220
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setVisibility(I)V

    .line 221
    move-object v1, v0

    const/16 v2, 0xff

    invoke-direct {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 223
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v1, :cond_0

    .line 224
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 228
    :goto_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getTop()I

    move-result v2

    iput v2, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 229
    return-void

    .line 226
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    move-object v3, v0

    iget v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    goto :goto_0
.end method

.method setAnimationProgress(F)V
    .locals 4

    .prologue
    .line 523
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setScaleX(F)V

    .line 524
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setScaleY(F)V

    .line 525
    return-void
.end method

.method public varargs setColorScheme([I)V
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 608
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 609
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 635
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 636
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setColorSchemeColors([I)V

    .line 637
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 10
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 619
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v2, v5

    .line 620
    move-object v5, v1

    array-length v5, v5

    new-array v5, v5, [I

    move-object v3, v5

    .line 621
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move-object v6, v1

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 622
    move-object v5, v3

    move v6, v4

    move-object v7, v2

    move-object v8, v1

    move v9, v4

    aget v8, v8, v9

    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    .line 621
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 624
    :cond_0
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 625
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 4

    .prologue
    .line 667
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    int-to-float v3, v3

    iput v3, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 668
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .prologue
    .line 233
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 234
    move v2, v1

    if-nez v2, :cond_0

    .line 235
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->reset()V

    .line 237
    :cond_0
    return-void
.end method

.method public setLegacyRequestDisallowInterceptTouchEventEnabled(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 834
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mEnableLegacyRequestDisallowInterceptTouch:Z

    .line 835
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 4

    .prologue
    .line 1081
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 1082
    return-void
.end method

.method public setOnChildScrollUpCallback(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;)V
    .locals 4
    .param p1    # Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 750
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mChildScrollUpCallback:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    .line 751
    return-void
.end method

.method public setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V
    .locals 4
    .param p1    # Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 474
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mListener:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;

    .line 475
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 582
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    .line 583
    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 600
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setBackgroundColor(I)V

    .line 601
    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 591
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 592
    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .locals 5

    .prologue
    .line 360
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 361
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    .line 362
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/CircleImageView;->invalidate()V

    .line 363
    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .locals 6

    .prologue
    .line 322
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    .line 323
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 324
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 325
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    .line 326
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->reset()V

    .line 327
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 328
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 6

    .prologue
    .line 484
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    move v4, v1

    if-eq v3, v4, :cond_1

    .line 486
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 487
    const/4 v3, 0x0

    move v2, v3

    .line 488
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez v3, :cond_0

    .line 489
    move-object v3, v0

    iget v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    move-object v4, v0

    iget v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    add-int/2addr v3, v4

    move v2, v3

    .line 493
    :goto_0
    move-object v3, v0

    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 494
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNotify:Z

    .line 495
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {v3, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    .line 499
    :goto_1
    return-void

    .line 491
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    move v2, v3

    goto :goto_0

    .line 497
    :cond_1
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    goto :goto_1
.end method

.method public setSize(I)V
    .locals 6

    .prologue
    .line 380
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-eqz v3, :cond_0

    move v3, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 395
    :goto_0
    return-void

    .line 383
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    move-object v2, v3

    .line 384
    move v3, v1

    if-nez v3, :cond_1

    .line 385
    move-object v3, v0

    const/high16 v4, 0x42600000    # 56.0f

    move-object v5, v2

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    .line 392
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 393
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStyle(I)V

    .line 394
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    goto :goto_0

    .line 387
    :cond_1
    move-object v3, v0

    const/high16 v4, 0x42200000    # 40.0f

    move-object v5, v2

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    goto :goto_1
.end method

.method public setSlingshotDistance(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 373
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCustomSlingshotDistance:I

    .line 374
    return-void
.end method

.method setTargetOffsetTopAndBottom(I)V
    .locals 4

    .prologue
    .line 1386
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->bringToFront()V

    .line 1387
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move v3, v1

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1388
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getTop()I

    move-result v3

    iput v3, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 1389
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 4

    .prologue
    .line 1091
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public startNestedScroll(II)Z
    .locals 5

    .prologue
    .line 1048
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v2

    if-nez v3, :cond_0

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startNestedScroll(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 8

    .prologue
    .line 541
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    new-instance v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$3;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$3;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    iput-object v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    .line 547
    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 548
    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 549
    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 550
    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v4, v1

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 551
    return-void
.end method

.method public stopNestedScroll()V
    .locals 2

    .prologue
    .line 1096
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 1097
    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 3

    .prologue
    .line 1053
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-nez v2, :cond_0

    .line 1054
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->stopNestedScroll()V

    .line 1056
    :cond_0
    return-void
.end method
